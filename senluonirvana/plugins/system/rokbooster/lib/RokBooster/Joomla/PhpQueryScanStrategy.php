<?php
/**
 * @version   $Id: PhpQueryScanStrategy.php 684 2012-05-02 21:18:14Z btowles $
 * @author    RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - ${copyright_year} RocketTheme, LLC
 * @license   http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 */

defined('ROKBOOSTER_LIB') or die('Restricted access');

/**
 *
 */
class RokBooster_Joomla_PhpQueryScanStrategy extends RokBooster_Joomla_AbstractStrategy
{
	/**
	 * @var string
	 */
	protected $original_content;

	/**
	 * @var phpQueryObject
	 */
	protected $document;

	/**
	 * @var string
	 */
	protected $prefix = '';


	/**
	 * @param $options
	 */
	public function __construct($options)
	{
		parent::__construct($options);
		if ($this->options->scan_method == 'header') {
			$this->prefix = 'head > ';
		}
	}

	/**
	 *
	 */
	public function identify()
	{
		$this->original_content = JResponse::getBody();
		$this->document         = phpQuery::newDocumentHTML($this->original_content);


		if ($this->options->minify_js) {
			$this->identifyScriptFiles();
		}
		if ($this->options->minify_css) {
			$this->identifyStyleFiles();
		}
		if ($this->options->inline_js) {
			$this->identifyInlineScripts();
		}
		if ($this->options->inline_css) {
			$this->identifyInlineStyles();
		}
	}

	/**
	 *
	 */
	protected function identifyInlineScripts()
	{
		$inlineGroup = new RokBooster_Compressor_InlineGroup(RokBooster_Compressor_InlineGroup::STATE_INCLUDE, 'text/javascript');
		$tags        = pq($this->prefix . 'script:not([src])[type=text/javascript]', $this->document);
		foreach ($tags as $tag) {
			$inlineGroup->addItem(pq($tag, $this->document)->text());

		}

		$this->inline_scripts[] = $inlineGroup;
		if ($this->isCacheExpired($inlineGroup->getChecksum()) && !$this->isBeingRendered($inlineGroup->getChecksum())) {
			$this->render_inline_scripts[] = $inlineGroup;
			$this->setCurrentlyRendering($inlineGroup->getChecksum());
		}
	}

	/**
	 *
	 */
	protected function identifyInlineStyles()
	{
		$inlineGroup = new RokBooster_Compressor_InlineGroup(RokBooster_Compressor_InlineGroup::STATE_INCLUDE, 'text/css');
		$tags        = pq($this->prefix . 'style[type=\'text/css\']', $this->document);


		foreach ($tags as $tag) {
			$inlineGroup->addItem(pq($tag, $this->document)->text());
		}
		$this->inline_styles[] = $inlineGroup;
		if ($this->isCacheExpired($inlineGroup->getChecksum()) && !$this->isBeingRendered($inlineGroup->getChecksum())) {
			$this->render_inline_styles[] = $inlineGroup;
			$this->setCurrentlyRendering($inlineGroup->getChecksum());
		}
	}


	/**
	 *
	 */
	protected function identifyScriptFiles()
	{
		$header_links = pq($this->prefix . 'script[src]', $this->document);
		foreach ($header_links as $link) {
			$attribs = pq($link, $this->document)->attr('*');
			$href    = $attribs['src'];
			unset($attribs['src']);
			$mime = $attribs['type'];
			unset($attribs['type']);
			$file = new RokBooster_Compressor_File($href, $this->options->root_url, $this->options->root_path);
			$file->setMime($mime);
			$file->setType('js');
			$file->setAttributes($attribs);
			if (in_array($file->file, $this->options->ignored_files)) {
				$file->setIgnored(true);
			}
			$this->script_file_sorter->addFile($file);
		}

		$script_file_groups = $this->script_file_sorter->getGroups();
		foreach ($script_file_groups as &$file_group) {
			if ($file_group->getStatus() != RokBooster_Compressor_IGroup::STATE_IGNORE && $this->isCacheExpired($file_group->getChecksum()) && !$this->isBeingRendered($file_group->getChecksum())) {
				$this->render_script_file_groups[] = $file_group;
				$this->setCurrentlyRendering($file_group->getChecksum());
			}
		}
	}


	/**
	 *
	 */
	protected function identifyStyleFiles()
	{
		$header_links = pq($this->prefix . 'link[href][rel=stylesheet]', $this->document);
		foreach ($header_links as $link) {
			$attribs = pq($link, $this->document)->attr('*');
			$href    = $attribs['href'];
			unset($attribs['href']);
			$mime = $attribs['type'];
			unset($attribs['type']);
			unset($attribs['rel']);
			$file = new RokBooster_Compressor_File($href, $this->options->root_url, $this->options->root_path);
			$file->setMime($mime);
			$file->setType('css');
			$file->setAttributes($attribs);
			if (in_array($file->file, $this->options->ignored_files)) {
				$file->setIgnored(true);
			}
			$this->style_file_sorter->addFile($file);
		}

		$file_groups = $this->style_file_sorter->getGroups();
		foreach ($file_groups as &$file_group) {
			if ($this->isCacheExpired($file_group->getChecksum()) && !$this->isBeingRendered($file_group->getChecksum())) {
				$this->render_style_file_groups[] = $file_group;
				$this->setCurrentlyRendering($file_group->getChecksum());
			}
		}
	}

	/**
	 * @return mixed
	 */
	public function populate()
	{
		$this->populateInlineScripts();
		$this->populateScriptFiles();
		$this->populateInlineStyles();
		$this->populateStyleFiles();

		$markup = ($this->document->getDocument()->htmlOuter());
		$markup = preg_replace('/(<(base|img|br|meta|area|input|link|col|hr|param|frame|isindex)+([\s]+[\S]+[\s]*=[\s]*("([^"]*)"|\'([^\']*)\'))*[\s]*)>/imx','$1/>',$markup);
		JResponse::setBody($markup);
	}

	/**
	 *
	 */
	protected function populateStyleFiles()
	{
		if ($this->options->minify_css) {
			$outputlinks = array();
			pq($this->prefix . 'link[href][rel=stylesheet]', $this->document)->remove();
			foreach ($this->style_file_sorter->getGroups() as $styleGroup) {
				if ($styleGroup->getStatus() == RokBooster_Compressor_IGroup::STATE_INCLUDE && $this->doesCacheExist($styleGroup->getChecksum())) {
					$attribs = array();
					foreach ($styleGroup->getAttributes() as $attrib_key => $attrib_value) {
						$attribs[] = $attrib_key . '="' . $attrib_value . '"';
					}
					$outputlinks[] = '<link rel="stylesheet" href="' . $this->cache->getCacheUrl($styleGroup->getChecksum()) . '" type="' . $styleGroup->getMime() . '" ' . implode(' ', $attribs) . ' />' . PHP_EOL;
				} else {
					foreach ($styleGroup as $file) {
						/** @var $file RokBooster_Compressor_File */
						$attribs = array();
						foreach ($file->getAttributes() as $attrib_key => $attrib_value) {
							$attribs[] = $attrib_key . '="' . $attrib_value . '"';
						}
						$outputlinks[] = '<link rel="stylesheet" href="' . $file->getFile() . '" type="' . $file->getMime() . '" ' . implode(' ', $attribs) . ' />' . PHP_EOL;
					}
				}
			}
			pq('head', $this->document)->prepend(implode("\n", $outputlinks));
		} else {
			$links = array();
			$stylesheet_links = pq($this->prefix . ' link[href][rel=stylesheet]', $this->document);
			foreach($stylesheet_links as $stylesheet_link)
			{
				$foo = pq($stylesheet_link, $this->document)->markup();
			}
			pq('head', $this->document)->prepend($stylesheet_links);

		}
	}

	/**
	 *
	 */
	protected function populateInlineStyles()
	{
		if ($this->options->inline_css) {
			$outputblocks = array();
			pq($this->prefix . 'style[type=text/css]', $this->document)->remove();
			foreach ($this->inline_styles as $inlineGroup) {
				if ($inlineGroup->getStatus() == RokBooster_Compressor_IGroup::STATE_INCLUDE && $this->cache->doesCacheExist($inlineGroup->getChecksum())) {
					$outputblocks[] = '<style type="text/css">' . $this->cache->getCacheContent($inlineGroup->getChecksum()) . '</style>' . PHP_EOL;
				} else {
					$outputblocks[] = '<style type="text/css">' . $inlineGroup->getContent() . '</style>' . PHP_EOL;
				}
			}
			pq('head', $this->document)->prepend(implode("\n", $outputblocks));
		} else {
			$style_block = pq($this->prefix . 'style[type=text/css]', $this->document);
			pq('head', $this->document)->prepend($style_block);
		}
	}

	/**
	 *
	 */
	protected function populateScriptFiles()
	{
		if ($this->options->minify_js) {
			$outputlinks = array();
			pq($this->prefix . 'script[src]', $this->document)->remove();
			foreach ($this->script_file_sorter->getGroups() as $filegroup) {
				if ($filegroup->getStatus() == RokBooster_Compressor_IGroup::STATE_INCLUDE && $this->cache->doesCacheExist($filegroup->getChecksum())) {
					$attribs = array();
					foreach ($filegroup->getAttributes() as $attrib_key => $attrib_value) {
						$attribs[] = $attrib_key . '="' . $attrib_value . '"';
					}
					$outputlinks[] = '<script src="' . $this->cache->getCacheUrl($filegroup->getChecksum()) . '" type="' . $filegroup->getMime() . '" ' . implode(' ', $attribs) . '></script>' . PHP_EOL;
				} else {
					foreach ($filegroup as $file) {
						/** @var $file RokBooster_Compressor_File */
						$attribs = array();
						foreach ($file->getAttributes() as $attrib_key => $attrib_value) {
							$attribs[] = $attrib_key . '="' . $attrib_value . '"';
						}
						$outputlinks[] = '<script src="' . $file->getFile() . '" type="' . $file->getMime() . '" ' . implode(' ', $attribs) . '></script>' . PHP_EOL;
					}
				}
			}
			pq('head', $this->document)->prepend(implode("\n", $outputlinks));
		} else {
			$links = pq($this->prefix . 'script[src]', $this->document);
			pq('head', $this->document)->prepend($links);
		}
	}

	/**
	 *
	 */
	protected function populateInlineScripts()
	{
		if ($this->options->inline_js) {
			$outputblocks = array();
			pq($this->prefix . 'script:not([src])[type=text/javascript]', $this->document)->remove();
			foreach ($this->inline_scripts as $inlineGroup) {
				if ($inlineGroup->getStatus() == RokBooster_Compressor_IGroup::STATE_INCLUDE && $this->cache->doesCacheExist($inlineGroup->getChecksum())) {
					$outputblocks[] = '<script type="text/javascript">' . $this->cache->getCacheContent($inlineGroup->getChecksum()) . '</script>' . PHP_EOL;

				} else {
					$outputblocks[] = '<script type="text/javascript">' . $inlineGroup->getContent() . '</script>' . PHP_EOL;
				}

			}
			pq('head', $this->document)->prepend(implode("\n", $outputblocks));
		} else {
			$script_block = pq($this->prefix . 'script:not([src])[type=text/javascript]', $this->document);
			pq('head', $this->document)->prepend($script_block);
		}
	}
}
