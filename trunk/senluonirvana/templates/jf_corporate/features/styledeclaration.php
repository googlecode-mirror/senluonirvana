<?php
/**
 * @package     gantry
 * @subpackage  features
 * @version		3.2.20 June 19, 2012
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
class GantryFeatureStyleDeclaration extends GantryFeature {
    var $_feature_name = 'styledeclaration';

    function isEnabled() {
        global $gantry;
        $menu_enabled = $this->get('enabled');

        if (1 == (int)$menu_enabled) return true;
        return false;
    }

	function init() {
        global $gantry;

        //inline css for dynamic stuff
        $css  = 'body, #rt-header .jf-header-shadow {background-color:'.$gantry->get('bgcolor').';}';
        $css .= 'body a {color:'.$gantry->get('linkcolor').';}';
		$css .= '#rt-main .rt-container .rt-grid-12 .rt-block h2.title a:hover {color:'.$gantry->get('linkcolor').';}';
        $css .= '#rt-header {background-color:'.$gantry->get('headercolor').';}';
        $css .= '#jf-bottomsection {background-color:'.$gantry->get('bottomcolor').';}';
        $css .= '#rt-footer .rt-container, #rt-copyright .rt-container {background:'.$gantry->get('footercolor').';}';
        $css .= '#rt-sidebar-a .module-title h2 {background-color:'.$gantry->get('jfmoduletitlecolor').';}';
        $css .= '.rt-readon-surround a {background-color:'.$gantry->get('jfreadmorecolor').';}';
		$css .= 'a:hover {color:'.$gantry->get('jflinkhovercolor').';}';

        
        $gantry->addInlineStyle($css);

        //style stuff
        $gantry->addStyle($gantry->get('cssstyle').".css");
	}

}