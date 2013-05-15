<?php
/**
 * @package Gantry Template Framework - RocketTheme
 * @version 3.2.20 June 19, 2012
 * @author RocketTheme http://www.rockettheme.com
 * @copyright Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 *
 * Gantry uses the Joomla Framework (http://www.joomla.org), a GNU/GPLv2 content management system
 *
 */
// no direct access
defined( '_JEXEC' ) or die( 'Restricted index access' );

// load and inititialize gantry class
require_once('lib/gantry/gantry.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $gantry->language; ?>" lang="<?php echo $gantry->language;?>" >

    <head>
        <?php
            $gantry->displayHead();
            $gantry->addStyles(array('template.css','joomla.css','style.css','jf-object-carousel.css','jf-simple-slider.css','jf-nivo-slider.css','jf-tj-styles.css','jf-pirobox.css','jf-browser-fixes.css'));
			$doc =& JFactory::getDocument();
            /* $doc->addScript(JURI::base()."templates/".$this->template."/js/joomforest.js"); */
        ?>
		<script src="<?php echo JURI::base().'templates/'.$this->template; ?>/js/jquery_1.5-jquery_ui.min.js" type="text/javascript"></script>
		<script src="<?php echo JURI::base().'templates/'.$this->template; ?>/js/jquery-ui-1.8.18.custom.min.js" type="text/javascript"></script>
		<script type="text/javascript">jQuery.noConflict();</script>
    </head>
    <body <?php echo $gantry->displayBodyTag(); ?>>
        <?php /** Begin Drawer **/ if ($gantry->countModules('drawer')) : ?>
        <div id="rt-drawer">
            <div class="rt-container">
                <?php echo $gantry->displayModules('drawer','standard','standard'); ?>
                <div class="clear"></div>
            </div>
        </div>
        <?php /** End Drawer **/ endif; ?>
		<?php /** Begin Top **/ if ($gantry->countModules('top')) : ?>
		<div id="rt-top" <?php echo $gantry->displayClassesByTag('rt-top'); ?>>
			<div class="rt-container">
				<?php echo $gantry->displayModules('top','standard','standard'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Top **/ endif; ?>
		<?php /** Begin Header **/ if ($gantry->countModules('header')) : ?>
		<div id="rt-header">
			<div class="rt-container">
				<div class="jf-headermaskline">
					<?php echo $gantry->displayModules('header','standard','standard'); ?>
					<div id="jf-undermenu" class="rt-grid-8 rt-omega">
							<div id="jf-search">
								<a class="jf-search-button jf-tooltip" href="#" title="Click to Search">
									<img src="<?php echo JURI::base().'templates/'.$this->template; ?>/images/jf-icons/search.png">
								</a>
								<div class="jf-search-content">
									<?php echo $gantry->displayModules('jf-search','basic','basic'); ?>
								</div>
							</div>
							<div id="jf-login">
								<a class="jf-login-button jf-tooltip" href="#" title="Click to Login">
									<img src="<?php echo JURI::base().'templates/'.$this->template; ?>/images/jf-icons/login.png">
								</a>
								<div class="jf-login-content">
									<?php echo $gantry->displayModules('jf-login','basic','basic'); ?>
								</div>
							</div>
							<div class="jf-undermenu-separator"></div>
							<?php echo $gantry->displayModules('jf-social-twitter','basic','basic'); ?>
							<?php echo $gantry->displayModules('jf-social-facebook','basic','basic'); ?>
							<?php echo $gantry->displayModules('jf-social-gplus','basic','basic'); ?>
							<?php echo $gantry->displayModules('jf-social-rss','basic','basic'); ?>
							<?php echo $gantry->displayModules('jf-social-myspace','basic','basic'); ?>
							<?php echo $gantry->displayModules('jf-social-linkedin','basic','basic'); ?>
					</div>
					<div class="clear"></div>
					<div id="jf-map">
						<?php echo $gantry->displayModules('jf-map','basic','basic'); ?>
					</div>
					<?php echo $gantry->displayModules('jf-object-carousel','basic','basic'); ?>
					<div class="clear"></div>
					<?php echo $gantry->displayModules('jf-simple-slider','basic','basic'); ?>
					<div class="clear"></div>
					<?php echo $gantry->displayModules('jf-nivo-slider','basic','basic'); ?>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="jf-header-shadow"></div>
		</div>
		<?php /** End Header **/ endif; ?>
		<?php /** Begin Menu **/ if ($gantry->countModules('navigation')) : ?>
		<div id="rt-menu">
			<div class="rt-container">
				<?php echo $gantry->displayModules('navigation','basic','basic'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Menu **/ endif; ?>
		<?php /** Begin JF Welcome **/ if ($gantry->countModules('jf-welcome')) : ?>
		<div id="jf-welcome">
			<div class="rt-container">
				<?php echo $gantry->displayModules('jf-welcome','basic','basic'); ?>
				<div class="clear "></div>
			</div>
		</div>
		<?php /** End Menu **/ endif; ?>
		<?php /** Begin Showcase **/ if ($gantry->countModules('showcase')) : ?>
		<div id="rt-showcase">
			<div class="rt-container">
				<?php echo $gantry->displayModules('showcase','standard','standard'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Showcase **/ endif; ?>
		<?php /** Begin Feature **/ if ($gantry->countModules('feature')) : ?>
		<div id="rt-feature">
			<div class="rt-container">
				<?php echo $gantry->displayModules('feature','standard','standard'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Feature **/ endif; ?>
		<?php /** Begin Utility **/ if ($gantry->countModules('utility')) : ?>
		<div id="rt-utility">
			<div class="rt-container">
				<?php echo $gantry->displayModules('utility','standard','basic'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Utility **/ endif; ?>
		<?php /** Begin Breadcrumbs **/ if ($gantry->countModules('breadcrumb')) : ?>
		<div id="rt-breadcrumbs">
			<div class="rt-container">
				<?php echo $gantry->displayModules('breadcrumb','standard','standard'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Breadcrumbs **/ endif; ?>
		<?php /** Begin Main Top **/ if ($gantry->countModules('maintop')) : ?>
		<div id="rt-maintop">
			<div class="rt-container">
				<?php echo $gantry->displayModules('maintop','standard','standard'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Main Top **/ endif; ?>
		<?php /** Begin Main Body **/ ?>
	    <?php echo $gantry->displayMainbody('mainbody','sidebar','standard','standard','standard','standard','standard'); ?>
		<?php /** End Main Body **/ ?>
		<?php /** Begin Main Bottom **/ if ($gantry->countModules('mainbottom')) : ?>
		<div id="rt-mainbottom">
			<div class="rt-container">
				<?php echo $gantry->displayModules('mainbottom','standard','standard'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Main Bottom **/ endif; ?>
		<?php /** Begin Bottom **/ if ($gantry->countModules('bottom')) : ?>
		<div id="rt-bottom">
			<div class="rt-container">
				<?php echo $gantry->displayModules('bottom','standard','standard'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Bottom **/ endif; ?>
		<div id="jf-bottomsection">
			<?php /** Begin Footer **/ if ($gantry->countModules('footer')) : ?>
			<div id="rt-footer">
				<div class="rt-container">
					<?php echo $gantry->displayModules('footer','standard','standard'); ?>
					<div class="clear"></div>
				</div>
			</div>
			<?php /** End Footer **/ endif; ?>
			<?php /** Begin Copyright **/ if ($gantry->countModules('copyright')) : ?>
			<div id="rt-copyright">
				<div class="rt-container">
					<?php echo $gantry->displayModules('copyright','standard','standard'); ?>
					<div class="clear"></div>
				</div>
			</div>
			<?php /** End Copyright **/ endif; ?>
		</div>
		<?php /** Begin Debug **/ if ($gantry->countModules('debug')) : ?>
		<div id="rt-debug">
			<div class="rt-container">
				<?php echo $gantry->displayModules('debug','standard','standard'); ?>
				<div class="clear"></div>
			</div>
		</div>
		<?php /** End Debug **/ endif; ?>
		<a style="display:none" href="http://www.joomforest.com/" title="joomforest.com" id="jf-forest" rel="follow">Designed By JoomForest.com</a>
		<?php /** Begin Analytics **/ if ($gantry->countModules('analytics')) : ?>
		<?php echo $gantry->displayModules('analytics','basic','basic'); ?>
		<?php /** End Analytics **/ endif; ?>
		<?php echo $gantry->displayModules('jf-features-options','basic','basic'); ?>
		<script src="<?php echo JURI::base().'templates/'.$this->template; ?>/js/joomforest.js" type="text/javascript"></script>
		<script src="<?php echo JURI::base().'templates/'.$this->template; ?>/js/jquery.gridnav.js" type="text/javascript"></script>
		<script src="<?php echo JURI::base().'templates/'.$this->template; ?>/js/jquery.quovolver.js" type="text/javascript"></script>
	</body>
</html>
<?php
$gantry->finalize();
?>