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
class GantryFeatureJfpirobox extends GantryFeature {
    var $_feature_name = 'jf_pirobox';
	function render($position="jf-pirobox") {
	    ob_start();
	    ?>
			<script type="text/javascript" src="<?php echo JURI::root();?>/templates/jf_corporate/js/pirobox_extended_feb_2011.js"></script>
			<script type="text/javascript">jQuery(document).ready(function(){jQuery.piroBox_ext({piro_speed:<?php echo $this->get('jf_pirobox_speed'); ?>,bg_alpha:0.<?php echo $this->get('jf_pirobox_background-opacity'); ?>,piro_scroll:true,piro_drag:false,piro_nav_pos:"<?php echo $this->get('jf_pirobox_navigation-position'); ?>"})});</script>
		<?php
	    return ob_get_clean();
	}
}