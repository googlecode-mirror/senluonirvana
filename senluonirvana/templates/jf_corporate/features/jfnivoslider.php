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
class GantryFeatureJfnivoslider extends GantryFeature {
    var $_feature_name = 'jf_nivo_slider';
	function render($position="jf-nivo-slider") {
	    ob_start();
	    ?>
			<script type="text/javascript" src="<?php echo JURI::root();?>/templates/jf_corporate/js/nivo.slider.js"></script>
			<script type="text/javascript">jQuery(window).load(function(){jQuery("#slider-nivo").nivoSlider({effect:"<?php echo $this->get('jf_nivo_slider_effect'); ?>",slices:15,boxCols:8,boxRows:4,animSpeed:<?php echo $this->get('jf_nivo_slider_animation_duration'); ?>,pauseTime:<?php echo $this->get('jf_nivo_slider_duration'); ?>,startSlide:0,directionNav:true,directionNavHide:false,})});</script>
		<?php
	    return ob_get_clean();
	}
}