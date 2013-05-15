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
			<script type="text/javascript" src="<?php echo JURI::root();?>/templates/rt_gantry/js/nivo.slider.js"></script>
			<script type="text/javascript">
				jQuery(window).load(function() {
					jQuery('#slider-nivo').nivoSlider({
						effect: '<?php echo $this->get('jf_nivo_slider_effect'); ?>', // Specify sets like: 'fold,fade,sliceDown'
						slices: 15, // For slice animations
						boxCols: 8, // For box animations
						boxRows: 4, // For box animations
						animSpeed: <?php echo $this->get('jf_nivo_slider_animation_duration'); ?>, // Slide transition speed
						pauseTime: <?php echo $this->get('jf_nivo_slider_duration'); ?>, // How long each slide will show
						startSlide: 0, // Set starting Slide (0 index)
						directionNav: true, // Next & Prev navigation
						directionNavHide: false, // Only show on hover
					});
				});
			</script>
		<?php
	    return ob_get_clean();
	}
}