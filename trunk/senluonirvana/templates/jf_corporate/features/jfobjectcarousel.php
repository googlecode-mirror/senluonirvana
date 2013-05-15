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
class GantryFeatureJfobjectcarousel extends GantryFeature {
    var $_feature_name = 'jf_object_carousel';
	function render($position="jf-features-options") {
	    ob_start();
	    ?>
			<script src="<?php echo JURI::root();?>/templates/jf_corporate/js/jquery.carouFredSel-5.5.0-packed.js" type="text/javascript"></script>
			<script type="text/javascript">jQuery(function(){var c={imgFront:-450,imgBack:-350,h3:-300,p:-275,a:-200};var b={imgFront:30,imgBack:300,h3:650,p:650,a:650};var a={imgFront:990,imgBack:990,h3:990,p:990,a:990};var d=false;jQuery("#jf-object-carousel").carouFredSel({scroll:{duration:0,pauseDuration:<?php echo $this->get('jf_object_carousel_duration'); ?>},auto:{button:"#next",conditions:function(){return(!d)},onBefore:function(f,e){d=true;jQuery(this).delay(900);f.find("img.img-front").animate({left:c.imgFront});f.find("img.img-back").delay(100).animate({left:c.imgBack});f.find("h3").delay(200).animate({left:c.h3});f.find("p").delay(300).animate({left:c.p});f.find("a").delay(400).animate({left:c.a})},onAfter:function(f,e){f.find("img.img-front").css({left:b.imgFront});f.find("img.img-back").css({left:b.imgBack});f.find("h3").animate({left:b.h3});f.find("p").css({left:b.p});f.find("a").css({left:b.a});e.find("img.img-front").css({left:a.imgFront}).animate({left:b.imgFront});e.find("img.img-back").css({left:a.imgBack}).delay(100).animate({left:b.imgBack});e.find("h3").css({left:a.h3}).delay(200).animate({left:b.h3});e.find("p").css({left:a.p}).delay(300).animate({left:b.p});e.find("a").css({left:a.a}).delay(400).animate({left:b.a},function(){d=false})}},prev:{button:"#prev",conditions:function(){return(!d)},onBefore:function(f,e){d=true;jQuery(this).delay(900);f.find("img.img-front").delay(400).animate({left:a.imgFront});f.find("img.img-back").delay(300).animate({left:a.imgBack});f.find("h3").delay(200).animate({left:a.h3});f.find("p").delay(100).animate({left:a.p});f.find("a").animate({left:a.a})},onAfter:function(f,e){f.find("img.img-front").css({left:b.imgFront});f.find("img.img-back").css({left:b.imgBack});f.find("h3").animate({left:b.h3});f.find("p").css({left:b.p});f.find("a").css({left:b.a});e.find("img.img-front").css({left:c.imgFront}).delay(400).animate({left:b.imgFront},function(){d=false});e.find("img.img-back").css({left:c.imgBack}).delay(300).animate({left:b.imgBack});e.find("h3").css({left:c.h3}).delay(200).animate({left:b.h3});e.find("p").css({left:c.p}).delay(100).animate({left:b.p});e.find("a").css({left:c.a}).animate({left:b.a})}},next:{button:"#next",conditions:function(){return(!d)},onBefore:function(f,e){d=true;jQuery(this).delay(900);f.find("img.img-front").animate({left:c.imgFront});f.find("img.img-back").delay(100).animate({left:c.imgBack});f.find("h3").delay(200).animate({left:c.h3});f.find("p").delay(300).animate({left:c.p});f.find("a").delay(400).animate({left:c.a})},onAfter:function(f,e){f.find("img.img-front").css({left:b.imgFront});f.find("img.img-back").css({left:b.imgBack});f.find("h3").animate({left:b.h3});f.find("p").css({left:b.p});f.find("a").css({left:b.a});e.find("img.img-front").css({left:a.imgFront}).animate({left:b.imgFront});e.find("img.img-back").css({left:a.imgBack}).delay(100).animate({left:b.imgBack});e.find("h3").css({left:a.h3}).delay(200).animate({left:b.h3});e.find("p").css({left:a.p}).delay(300).animate({left:b.p});e.find("a").css({left:a.a}).delay(400).animate({left:b.a},function(){d=false})}}})});</script>
		<?php
	    return ob_get_clean();
	}
}