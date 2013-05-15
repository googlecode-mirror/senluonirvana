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
class GantryFeatureWebFonts extends GantryFeature {

    var $_feature_name = 'webfonts';

    var $_google_fonts = array("Ropa Sans", "Aclonica", "Allan", "Allerta", "Allerta Stencil", "Amaranth", "Annie Use Your Telescope", "Anonymous Pro", "Anton", "Architects Daughter", "Arimo", "Artifika", "Arvo", "Asset", "Astloch", "Bangers", "Baumans", "Bentham", "Bevan", "Bigshot One", "Brawler", "Buda", "Cabin", "Cabin Sketch", "Calligraffitti", "Candal", "Cantarell", "Cardo", "Carter One", "Caudex", "Cedarville Cursive", "Cherry Cream Soda", "Chewy", "Coda", "Coming Soon", "Copse", "Corben", "Cousine", "Covered By Your Grace", "Crafty Girls", "Crimson Text", "Crushed", "Cuprum", "Damion", "Dancing Script", "Dawning of a New Day", "Didact Gothic", "Droid Sans", "Droid Sans Mono", "Droid Serif", "EB Garamond", "Expletus Sans", "Fontdiner Swanky", "Francois One", "Geo", "Goblin One", "Goudy Bookletter 1911", "Gravitas One", "Gruppo", "Hammersmith One", "Holtwood One SC", "Homemade Apple", "IM Fell", "Inconsolata", "Indie Flower", "Irish Grover", "Josefin Sans", "Josefin Slab", "Judson", "Jura", "Just Another Hand", "Just Me Again Down Here", "Kameron", "Kenia", "Kranky", "Kreon", "Kristi", "La Belle Aurore", "Lato", "League Script", "Lekton", "Limelight", "Lobster", "Lobster Two", "Lora", "Luckiest Guy", "Maiden Orange", "Mako", "Maven Pro", "Meddon", "MedievalSharp", "Megrim", "Merriweather", "Metrophobic", "Michroma", "Miltonian", "Molengo", "Monofett", "Mountains of Christmas", "Muli", "Neucha", "Neuton", "News Cycle", "Nixie One", "Nobile", "Nova", "Nunito", "OFL Sorts Mill Goudy TT", "Old Standard TT", "Open Sans", "Orbitron", "Oswald", "Over the Rainbow", "PT Sans", "PT Serif", "Pacifico", "Paytone One", "Permanent Marker", "Philosopher", "Play", "Playfair Display", "Podkova", "Puritan", "Quattrocento", "Quattrocento Sans", "Radley", "Raleway", "Redressed", "Reenie Beanie", "Rock Salt", "Rokkitt", "Ruslan Display", "Schoolbell", "Shadows Into Light", "Shanti", "Sigmar One", "Six Caps", "Slackey", "Smythe", "Sniglet", "Special Elite", "Sue Ellen Francisco", "Sunshiney", "Swanky and Moo Moo", "Syncopate", "Tangerine", "Tenor Sans", "Terminal Dosis Light", "The Girl Next Door", "Tinos", "Ubuntu", "Ultra", "UnifrakturCook", "UnifrakturMaguntia", "Unkempt", "VT323", "Varela", "Vibur", "Vollkorn", "Waiting for the Sunrise", "Wallpoet", "Walter Turncoat", "Wire One", "Yanone Kaffeesatz", "Zeyada");

    function init() {
        global $gantry;

        $font_family = $gantry->get('font-family');

       // Added to setect whether to use HTTP or HTTPS:
       $mode = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off') ? 'https' : 'http';

       // Only Google at this point
       if ($this->get('source') == "google" && in_array($font_family,$this->_google_fonts)) {

       	// Modified to use the HTTP/HTTPS $mode defined earlier:
           $gantry->addStyle($mode.'://fonts.googleapis.com/css?family='.str_replace(" ","+",$font_family));
		   $css = 'h1, h2 { font-family: "'.$font_family.'", "Helvetica", arial, serif !important; font-weight:normal; }';
		   $css .= '.rt-fusionmenu, .fusion-submenu-wrapper { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.jf-tooltipTop .tip-title { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#jf-login .jf-login-content input { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#jf-login .jf-login-content a { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#jf-login .jf-login-content #form-login-remember { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#jf-search .jf-search-content .inputbox { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#jf-search .jf-search-content .button { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#jf-welcome .rt-container .jf-welcome-desc { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.jf-google-font { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.tj_wrapper ul li > span { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.breadcrumbs { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= 'ul#jf-post-items li .date { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#jf-bottomsection blockquote cite { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.jf-blog-image .jf-blog-author, .jf-blog-image .jf-blog-category, .jf-blog-image .jf-blog-date, .jf-blog-image .jf-blog-author a,.jf-blog-image .jf-blog-category a { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.rt-readon-surround a { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#rt-sidebar-a ul.menu li a { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.jf-search-searchword { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#rt-sidebar-a #login-form, #rt-sidebar-a #login-form input { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.button-blue-style1, .button-red-style1, .button-green-style1, .button-black-style1, .button-blue-style2, .button-red-style2, .button-green-style2, .button-black-style2, .button-blue-style3, .button-red-style3, .button-green-style3, .button-black-style3 { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#jf-pricing-table { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.piro_html .caption p { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.jf-photo-gallery .jf-gallery-caption { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '.component-content .contact .button, .tip-wrap, .component-content .contact-form, .component-content .contact-form input, .component-content .contact-form textarea { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $css .= '#jf-object-carousel { font-family: "'.$font_family.'", "Helvetica", arial, serif; }';
		   $gantry->addInlineStyle($css);
       }

    }

}