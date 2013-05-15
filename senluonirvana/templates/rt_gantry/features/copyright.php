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
class GantryFeatureCopyright extends GantryFeature {
    var $_feature_name = 'copyright';

	function render($position="") {
	    ob_start();
	    ?>
		<div class="clear"></div>
		<div class="rt-block">
			<a href="http://www.joomforest.com/" title="joomforest.com" id="jf-forest"></a>
			<?php echo $this->get('text'); ?>
		</div>
		<?php
	    return ob_get_clean();
	}
}