<?php
/**
 * @package     gantry
 * @subpackage  features
 * @version		3.2.16 February 8, 2012
 * @author		RocketTheme http://www.rockettheme.com
 * @copyright 	Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license		http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 *
 * Gantry uses the Joomla Framework (http://www.joomla.org), a GNU/GPLv2 content management system
 *
 */
defined('JPATH_BASE') or die();
gantry_import('core.gantryfeature');
/**
 * @package     gantry
 * @subpackage  features
 */
class GantryFeatureJfsocialmyspace extends GantryFeature {
    var $_feature_name = 'jf_social_myspace';
	function render($position="jf-social-myspace") {
	    ob_start();
	    ?>
			<a class="jf-social-myspace jf-tooltip" href="<?php echo $this->get('jf_social_myspace_link'); ?>" title="<?php echo $this->get('jf_social_myspace_title'); ?>" target="_blank">
				<img class="jf-social-icons-hover" src="<?php echo JURI::base().'templates/'; ?>jf_corporate/images/social-icons/myspace.png">
			</a>
		<?php
	    return ob_get_clean();
	}
}