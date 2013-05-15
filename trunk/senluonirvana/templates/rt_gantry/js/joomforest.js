window.addEvent('domready', function() {
	
/* ----------- START TOOLTIPS --------------*/
	$$('a.jf-tooltip').each(function(element,index) {
		var content = element.get('title').split('::');
		element.store('tip:title', content[0]);
		element.store('tip:text', content[1]);
	});
	//create the tooltips
	var tipz = new Tips('.jf-tooltip',{
			className: 'jf-tooltipTop',
			fixed: true,
			hideDelay: 50,
			showDelay: 50
		});
		tipz.addEvents({
			'show': function(tip) {
				tip.fade('in');
				
			},
			'hide': function(tip) {
				tip.fade('out');
			}
		});
/* ----------- END TOOLTIPS --------------*/
//*** ------------------------ START JoomForest Hover Image ----------------------***//
		//*** START JF-HOVERIMAGE ------------------------------------------------------------***//
		function hoverimage() {
				jQuery("a[class^='jf-image-hover']").each(function() {	
					var jQueryimage = jQuery(this).contents("img");
						jQueryhoverclass = 'hover_video';
				if(jQuery(this).attr('href').match(/(jpg|gif|jpeg|png|tif)/)) 
				jQueryhoverclass = 'hover_image';
				if (jQueryimage.length > 0)
				{
					var jQueryhoverbg = jQuery("<span class='"+jQueryhoverclass+"'></span>").appendTo(jQuery(this));
						jQuery(this).bind('mouseenter', function(){
						jQueryheight = jQueryimage.height();
						jQuerywidth = jQueryimage.width();
						jQuerypos =  jQueryimage.position();
						jQueryhoverbg.css({height:34, width:34, top:10, right:10});
					});
				}
			});	
			jQuery("a[class^='jf-image-hover']").contents("img").hover(function() {
					jQuery(this).stop().animate({"opacity": "0.3"}, 200);
					},function() {
					jQuery(this).stop().animate({"opacity": "1"},200);
			});
		}
		//*** END JF-HOVERIMAGE ------------------------------------------------------------***//
		//*** START JF-FUNCTION CALLBACKS ----------------------------------------------------***//
		jQuery(function(){
			hoverimage();
		});
		//*** END JF-FUNCTION CALLBACKS ----------------------------------------------------***//
//*** ------------------------ END JoomForest Hover Image ----------------------***//
/* ------------------ Start Sample FAQ Code ------------------ */
	//Set default open/close settings
	jQuery('.jf-faq-container').hide(); //Hide/close all containers
	jQuery('.jf-faq-trigger:first').addClass('active').next().show(); //Add "active" class to first trigger, then show/open the immediate next containe
	//On Click
	jQuery('.jf-faq-trigger').click(function(){
		if( jQuery(this).next().is(':hidden') ) { //If immediate next container is closed...
			jQuery('.jf-faq-trigger').removeClass('active').next().slideUp(); //Remove all .jf-chrome-faq-trigger classes and slide up the immediate next container
			jQuery(this).toggleClass('active').next().slideDown(); //Add .jf-chrome-faq-trigger class to clicked trigger and slide down the immediate next container
		}
		return false; //Prevent the browser jump to the link anchor
	});
/* ------------------ End Sample FAQ Code ------------------ */
/* ------------------ Start Scroll Top Plugin ------------------ */
	var scrolltotop={
	    //startline: Integer. Number of pixels from top of doc scrollbar is scrolled before showing control
	    //scrollto: Keyword (Integer, or "Scroll_to_Element_ID"). How far to scroll document up when control is clicked on (0=top).
	    setting: {startline:100, scrollto: 0, scrollduration:1000, fadeduration:[500, 100]},
	    controlHTML: '<div class="jf-scroll-top" style="width:49px; height:49px" /></div>', //HTML for control, which is auto wrapped in DIV w/ ID="topcontrol"
	    controlattrs: {offsetx:15, offsety:15}, //offset of control relative to right/ bottom of window corner
	    anchorkeyword: '#top', //Enter href value of HTML anchors on the page that should also act as "Scroll Up" links
	    state: {isvisible:false, shouldvisible:false},
	    scrollup:function(){
	        if (!this.cssfixedsupport) //if control is positioned using JavaScript
	            this.$control.css({opacity:0}) //hide control immediately after clicking it
	        var dest=isNaN(this.setting.scrollto)? this.setting.scrollto : parseInt(this.setting.scrollto)
	        if (typeof dest=="string" && jQuery('#'+dest).length==1) //check element set by string exists
	            dest=jQuery('#'+dest).offset().top
	        else
	            dest=0
	        this.$body.animate({scrollTop: dest}, this.setting.scrollduration);
	    },
	    keepfixed:function(){
	        var $window=jQuery(window)
	        var controlx=$window.scrollLeft() + $window.width() - this.$control.width() - this.controlattrs.offsetx
	        var controly=$window.scrollTop() + $window.height() - this.$control.height() - this.controlattrs.offsety
	        this.$control.css({left:controlx+'px', top:controly+'px'})
	    },
	    togglecontrol:function(){
	        var scrolltop=jQuery(window).scrollTop()
	        if (!this.cssfixedsupport)
	            this.keepfixed()
	        this.state.shouldvisible=(scrolltop>=this.setting.startline)? true : false
	        if (this.state.shouldvisible && !this.state.isvisible){
	            this.$control.stop().animate({opacity:1}, this.setting.fadeduration[0])
	            this.state.isvisible=true
	        }
	        else if (this.state.shouldvisible==false && this.state.isvisible){
	            this.$control.stop().animate({opacity:0}, this.setting.fadeduration[1])
	            this.state.isvisible=false
	        }
	    },
	    init:function(){
	        jQuery(document).ready(function($){
	            var mainobj=scrolltotop
	            var iebrws=document.all
	            mainobj.cssfixedsupport=!iebrws || iebrws && document.compatMode=="CSS1Compat" && window.XMLHttpRequest //not IE or IE7+ browsers in standards mode
	            mainobj.$body=(window.opera)? (document.compatMode=="CSS1Compat"? $('html') : $('body')) : $('html,body')
	            mainobj.$control=$('<div id="gantry-totop">'+mainobj.controlHTML+'</div>')
	                .css({position:mainobj.cssfixedsupport? 'fixed' : 'absolute', bottom:mainobj.controlattrs.offsety, right:mainobj.controlattrs.offsetx, opacity:0, cursor:'pointer'})
	                .attr({title:'Scroll Back to Top'})
	                .click(function(){mainobj.scrollup(); return false})
	                .appendTo('body')
	            if (document.all && !window.XMLHttpRequest && mainobj.$control.text()!='') //loose check for IE6 and below, plus whether control contains any text
	                mainobj.$control.css({width:mainobj.$control.width()}) //IE6- seems to require an explicit width on a DIV containing text
	            mainobj.togglecontrol()
	            $('a[href="' + mainobj.anchorkeyword +'"]').click(function(){
	                mainobj.scrollup()
	                return false
	            })
	            $(window).bind('scroll resize', function(e){
	                mainobj.togglecontrol()
	            })
	        })
	    }
	}
	scrolltotop.init()
/* ------------------ END Scroll Top Plugin ------------------ */

/* ------------------ Start JF Login ------------------ */
	jQuery(".jf-login-button").click(function() {
	  jQuery(".jf-login-content").fadeToggle("slow", "linear");
	});
	/* ---- START Click Out Function --------------- */
	jQuery('body').click(function() {
		jQuery('.jf-login-content').fadeOut();
	});
	jQuery('#jf-login').click(function(e) {
		e.stopPropagation();
	});
	/* ---- END Click Out Function --------------- */
/* ------------------ END JF Login ------------------ */

/* ------------------ Start JF Search ------------------ */
/*	jQuery(function(){
		jQuery(".jf-search-button").click(function(){
			jQuery(".jf-search-content").animate({width:'toggle'},500);	 // to use this slide well, you need css styles, its important  
		});			   
	});
*/
	jQuery(document).ready(function($) {
		jQuery('#jf-search > a').click(function(e) {
			var jfsearchcontent = jQuery(this).next();
			if(jQuery(this).hasClass('opened')) {
				jfsearchcontent.parent().animate({width:jQuery(this).width()+'px'}, 500, 'easeOutExpo');
				jQuery(this).removeClass('opened');
			}else{
				jfsearchcontent.parent().animate({width:(jfsearchcontent.find('input[type=text]').outerWidth()+jfsearchcontent.find('input[type=submit]').outerWidth()+jfsearchcontent.find('input[type=submit]').outerWidth()+jQuery(this).width())+'px'}, 500, 'easeOutExpo');
				jQuery(this).addClass('opened');
			}
			e.preventDefault();
		});
	});
/* ------------------ END JF Search ------------------ */

/* ------------------ Start JF Welcome Featured ------------------ */
	jQuery('.jf-front_page_element .jf-featured_item').hover(
		function()
		{
			jQuery(this).addClass('active');
			jQuery('.jf-front_page_element .jf-featured_item.active .jf-featured_icon').stop().animate({paddingTop: "35px"}, 200);
			jQuery('.jf-front_page_element .jf-featured_item').not('.active').stop().animate({opacity:0.3},300);

		},
		function()
		{
			jQuery('.jf-front_page_element .jf-featured_item.active .jf-featured_icon').stop().animate({paddingTop: "50px"}, 300);
			jQuery(this).removeClass('active');
			jQuery('.jf-front_page_element .jf-featured_item').stop().animate({opacity:1},600);
		}
	);
/* ------------------ END JF Welcome Featured ------------------ */

/* ------------------ Start JF TJ SLIDER ------------------ */
	jQuery(function() {
		jQuery('#tj_container').gridnav({
			type	: {
				mode		: 'disperse', 	// use def | fade | seqfade | updown | sequpdown | showhide | disperse | rows
				speed		: 500,			// for fade, seqfade, updown, sequpdown, showhide, disperse, rows
				easing		: '',			// for fade, seqfade, updown, sequpdown, showhide, disperse, rows	
				factor		: '',			// for seqfade, sequpdown, rows
				reverse		: ''			// for sequpdown
			}
		});
	});
/* ------------------ END JF TJ SLIDER ------------------ */

/* ------------------ Start JF Testimonial - quovolver plugin ------------------ */
	jQuery(function() {
		jQuery('#jf-bottomsection blockquote').quovolver();
	});
/* ------------------ END JF Testimonial - quovolver plugin ------------------ */

/* ------------------ Start CSS Detector ------------------ */
function css_browser_selector(u){var ua=u.toLowerCase(),is=function(t){return ua.indexOf(t)>-1},g='gecko',w='webkit',s='safari',o='opera',m='mobile',h=document.documentElement,b=[(!(/opera|webtv/i.test(ua))&&/msie\s(\d)/.test(ua))?('ie ie'+RegExp.$1):is('firefox/2')?g+' ff2':is('firefox/3.5')?g+' ff3 ff3_5':is('firefox/3.6')?g+' ff3 ff3_6':is('firefox/3')?g+' ff3':is('gecko/')?g:is('opera')?o+(/version\/(\d+)/.test(ua)?' '+o+RegExp.$1:(/opera(\s|\/)(\d+)/.test(ua)?' '+o+RegExp.$2:'')):is('konqueror')?'konqueror':is('blackberry')?m+' blackberry':is('android')?m+' android':is('chrome')?w+' chrome':is('iron')?w+' iron':is('applewebkit/')?w+' '+s+(/version\/(\d+)/.test(ua)?' '+s+RegExp.$1:''):is('mozilla/')?g:'',is('j2me')?m+' j2me':is('iphone')?m+' iphone':is('ipod')?m+' ipod':is('ipad')?m+' ipad':is('mac')?'mac':is('darwin')?'mac':is('webtv')?'webtv':is('win')?'win'+(is('windows nt 6.0')?' vista':''):is('freebsd')?'freebsd':(is('x11')||is('linux'))?'linux':'','js']; c = b.join(' '); h.className += ' '+c; return c;}; css_browser_selector(navigator.userAgent);
/* ------------------ END CSS Detector ------------------ */


});