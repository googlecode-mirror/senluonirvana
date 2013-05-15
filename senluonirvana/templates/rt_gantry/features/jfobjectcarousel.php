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
			<script src="<?php echo JURI::root();?>/templates/rt_gantry/js/jquery.carouFredSel-5.5.0-packed.js" type="text/javascript"></script>
			<script type="text/javascript">
				jQuery(function() {
					var left = {
						imgFront	: -450,
						imgBack	: -350,
						h3		: -300,
						p			: -275,
						a			: -200
					}
					var current = {
						imgFront	: 30,
						imgBack	: 300,
						h3		: 650,
						p			: 650,
						a			: 650
					}
					var right = {
						imgFront	: 990,
						imgBack	: 990,
						h3		: 990,
						p			: 990,
						a			: 990
					}
					var isScrolling = false;
					jQuery('#jf-object-carousel').carouFredSel({
						scroll	: {
							duration		: 0,
							pauseDuration	: <?php echo $this->get('jf_object_carousel_duration'); ?>
						},
						auto	: {
							button		: '#next',
							conditions	: function() {
								return (!isScrolling);
							},
							onBefore	: function(oldI, newI) {
								isScrolling = true;
								jQuery(this).delay(900);
								oldI.find('img.img-front')
									.animate({
										left: left.imgFront
									});
								oldI.find('img.img-back')
									.delay(100)
									.animate({
										left: left.imgBack
									});
								oldI.find('h3')
									.delay(200)
									.animate({
										left: left.h3
									});
								oldI.find('p')
									.delay(300)
									.animate({
										left: left.p
									});
								oldI.find('a')
									.delay(400)
									.animate({
										left: left.a
									});
							},
							onAfter: function(oldI, newI) {
								oldI.find('img.img-front')
									.css({
										left: current.imgFront
									});
								oldI.find('img.img-back')
									.css({
										left: current.imgBack
									});
								oldI.find('h3')
									.animate({
										left: current.h3
									});
								oldI.find('p')
									.css({
										left: current.p
									});
								oldI.find('a')
									.css({
										left: current.a
									});
								newI.find('img.img-front')
									.css({
										left: right.imgFront
									})
									.animate({
										left: current.imgFront
									});
								newI.find('img.img-back')
									.css({
										left: right.imgBack
									}).delay(100)
									.animate({
										left: current.imgBack
									});
								newI.find('h3')
									.css({
										left: right.h3
									}).delay(200)
									.animate({
										left: current.h3
									});
								newI.find('p')
									.css({
										left: right.p
									}).delay(300)
									.animate({
										left: current.p
									});
								newI.find('a')
									.css({
										left: right.a
									}).delay(400)
									.animate({
										left: current.a
									}, function() {
										isScrolling = false;
									});
							}
						},
						prev	: {
							button		: '#prev',
							conditions	: function() {
								return (!isScrolling);
							},
							onBefore	: function(oldI, newI) {
								isScrolling = true;
								jQuery(this).delay(900);
								oldI.find('img.img-front')
									.delay(400)
									.animate({
										left: right.imgFront
									});
								oldI.find('img.img-back')
									.delay(300)
									.animate({
										left: right.imgBack
									});
								oldI.find('h3')
									.delay(200)
									.animate({
										left: right.h3
									});
								oldI.find('p')
									.delay(100)
									.animate({
										left: right.p
									});
								oldI.find('a')
									.animate({
										left: right.a
									});
							},
							onAfter: function(oldI, newI) {
								oldI.find('img.img-front')
									.css({
										left: current.imgFront
									});
								oldI.find('img.img-back')
									.css({
										left: current.imgBack
									});
								oldI.find('h3')
									.animate({
										left: current.h3
									});
								oldI.find('p')
									.css({
										left: current.p
									});
								oldI.find('a')
									.css({
										left: current.a
									});
								newI.find('img.img-front')
									.css({
										left: left.imgFront
									}).delay(400)
									.animate({
										left: current.imgFront
									}, function() {
										isScrolling = false;
									});
								newI.find('img.img-back')
									.css({
										left: left.imgBack
									}).delay(300)
									.animate({
										left: current.imgBack
									});
								newI.find('h3')
									.css({
										left: left.h3
									}).delay(200)
									.animate({
										left: current.h3
									});
								newI.find('p')
									.css({
										left: left.p
									}).delay(100)
									.animate({
										left: current.p
									});
								newI.find('a')
									.css({
										left: left.a
									})
									.animate({
										left: current.a
									});
							}
						},
						next	: {
							button		: '#next',
							conditions	: function() {
								return (!isScrolling);
							},
							onBefore	: function(oldI, newI) {
								isScrolling = true;
								jQuery(this).delay(900);
								oldI.find('img.img-front')
									.animate({
										left: left.imgFront
									});
								oldI.find('img.img-back')
									.delay(100)
									.animate({
										left: left.imgBack
									});
								oldI.find('h3')
									.delay(200)
									.animate({
										left: left.h3
									});
								oldI.find('p')
									.delay(300)
									.animate({
										left: left.p
									});
								oldI.find('a')
									.delay(400)
									.animate({
										left: left.a
									});
							},
							onAfter: function(oldI, newI) {
								oldI.find('img.img-front')
									.css({
										left: current.imgFront
									});
								oldI.find('img.img-back')
									.css({
										left: current.imgBack
									});
								oldI.find('h3')
									.animate({
										left: current.h3
									});
								oldI.find('p')
									.css({
										left: current.p
									});
								oldI.find('a')
									.css({
										left: current.a
									});
								newI.find('img.img-front')
									.css({
										left: right.imgFront
									})
									.animate({
										left: current.imgFront
									});
								newI.find('img.img-back')
									.css({
										left: right.imgBack
									}).delay(100)
									.animate({
										left: current.imgBack
									});
								newI.find('h3')
									.css({
										left: right.h3
									}).delay(200)
									.animate({
										left: current.h3
									});
								newI.find('p')
									.css({
										left: right.p
									}).delay(300)
									.animate({
										left: current.p
									});
								newI.find('a')
									.css({
										left: right.a
									}).delay(400)
									.animate({
										left: current.a
									}, function() {
										isScrolling = false;
									});
							}
						}
					});
				});
			</script>
		<?php
	    return ob_get_clean();
	}
}