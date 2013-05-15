<?php
/**
 * @package 	Gantry Template Framework - RocketTheme
 * @version 	3.2.20 June 19, 2012
 * @author 		RocketTheme http://www.rockettheme.com
 * @copyright	Copyright (C) 2007 - 2012 RocketTheme, LLC
 * @license 	http://www.gnu.org/licenses/gpl-2.0.html GNU/GPLv2 only
 *
 * Gantry uses the Joomla Framework (http://www.joomla.org), a GNU/GPLv2 content management system
 *
 */
defined('JPATH_BASE') or die();

$gantry_config_mapping = array(
    'belatedPNG' => 'belatedPNG',
	'ie6Warning' => 'ie6Warning'
);

$gantry_presets = array(
    'presets' => array(
        'blue' => array(
            'name' => 'Blue',
            'cssstyle' => 'style1',
			'bgcolor' => '#f3f3f3',
			'headercolor' => '#060C17',
			'bottomcolor' => '#060C17',
			'footercolor' => '#666666',
			'jfmoduletitlecolor' => '#060C17',
			'jfreadmorecolor' => '#060C17',
            'linkcolor' => '#cc0000',
			'jflinkhovercolor' => '#ff0000',
            'font-family' => 'Yanone Kaffeesatz'
        ),
        'red' => array(
            'name' => 'Red',
            'cssstyle' => 'style2',
			'bgcolor' => '#f3f3f3',
			'headercolor' => '#980000',
			'bottomcolor' => '#980000',
			'footercolor' => '#666666',
			'jfmoduletitlecolor' => '#980000',
			'jfreadmorecolor' => '#980000',
            'linkcolor' => '#cc0000',
			'jflinkhovercolor' => '#ff0000',
            'font-family' => 'Yanone Kaffeesatz'
        ),
        'green' => array(
            'name' => 'Green',
            'cssstyle' => 'style3',
			'bgcolor' => '#f3f3f3',
			'headercolor' => '#00804e',
			'bottomcolor' => '#00804e',
			'footercolor' => '#666666',
			'jfmoduletitlecolor' => '#00804e',
			'jfreadmorecolor' => '#00804e',
            'linkcolor' => '#006380',
			'jflinkhovercolor' => '#0095c0',
            'font-family' => 'Yanone Kaffeesatz'
        ),
        'black' => array(
            'name' => 'Black',
            'cssstyle' => 'style4',
			'bgcolor' => '#f3f3f3',
			'headercolor' => '#000000',
			'bottomcolor' => '#000000',
			'footercolor' => '#666666',
			'jfmoduletitlecolor' => '#222222',
			'jfreadmorecolor' => '#006380',
            'linkcolor' => '#006380',
			'jflinkhovercolor' => '#0095c0',
            'font-family' => 'Yanone Kaffeesatz'
        )
    )
);

$gantry_browser_params = array(
    'ie6' => array(
        'backgroundlevel' => 'low',
        'bodylevel' => 'low'
    )
);

$gantry_belatedPNG = array('.png','#rt-logo');

$gantry_ie6Warning = "<h3>IE6 DETECTED: Currently Running in Compatibility Mode</h3><h4>This site is compatible with IE6, however your experience will be enhanced with a newer browser</h4><p>Internet Explorer 6 was released in August of 2001, and the latest version of IE6 was released in August of 2004.  By continuing to run Internet Explorer 6 you are open to any and all security vulnerabilities discovered since that date.  In March of 2009, Microsoft released version 8 of Internet Explorer that, in addition to providing greater security, is faster and more standards compliant than both version 6 and 7 that came before it.</p> <br /><a class='external'  href='http://www.microsoft.com/windows/internet-explorer/?ocid=ie8_s_cfa09975-7416-49a5-9e3a-c7a290a656e2'>Download Internet Explorer 8 NOW!</a>";
