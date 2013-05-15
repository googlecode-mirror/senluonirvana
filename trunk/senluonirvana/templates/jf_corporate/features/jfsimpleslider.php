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
class GantryFeatureJfsimpleslider extends GantryFeature {
    var $_feature_name = 'jf_simple_slider';
	function render($position="jf-simple-slider") {
	    ob_start();
	    ?>
			<script src="<?php echo JURI::root();?>/templates/jf_corporate/js/slides.min.jquery.js" type="text/javascript"></script>
			<script type="text/javascript">jQuery(document).ready(function(){jQuery("#jf-simple-slider-slides").slides({preload:true,preloadImage:"<?php echo JURI::root();?>/templates/jf_corporate/images/jf-simple-slider/loading.gif",effect:"slide",play:<?php echo $this->get('jf_simple_slider_duration'); ?>,pause:2500,hoverPause:true,animationStart:function(a){jQuery(".jf-simple-slider-caption").animate({bottom:0,right:40,opacity:0},200)},animationComplete:function(a){jQuery(".jf-simple-slider-caption").animate({bottom:40,right:40,opacity:1},200)},slidesLoaded:function(){jQuery(".jf-simple-slider-caption").animate({bottom:40,right:40,opacity:1},200)}})});</script>
		<?php
	    return ob_get_clean();
	}
}