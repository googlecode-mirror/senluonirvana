Element.implement({tidy:function(){this.set("value",this.get("value").tidy());},getTextInRange:function(b,a){return this.get("value").substring(b,a);},getSelectedText:function(){if(this.setSelectionRange){return this.getTextInRange(this.getSelectionStart(),this.getSelectionEnd());}this.focus();return document.selection.createRange().text;},getSelectedRange:function(){this.focus();if(this.selectionStart!=null){return{start:this.selectionStart,end:this.selectionEnd};}var g={start:0,end:0};var a=this.getDocument().selection.createRange();if(!a||a.parentElement()!=this){return g;}var c=a.duplicate();if(this.type=="text"){g.start=0-c.moveStart("character",-100000);g.end=g.start+a.text.length;}else{var b=this.get("value");var d=b.length;c.moveToElementText(this);c.setEndPoint("StartToEnd",a);if(c.text.length){d-=b.match(/[\n\r]*$/)[0].length;}g.end=d-c.text.length;c.setEndPoint("StartToStart",a);g.start=d-c.text.length;}return g;},getSelectionStart:function(){return this.getSelectedRange().start;},getSelectionEnd:function(){return this.getSelectedRange().end;},setCaretPosition:function(a){if(a=="end"){a=this.get("value").length;}this.selectRange(a,a);return this;},getCaretPosition:function(){return this.getSelectedRange().start;},selectRange:function(g,a){this.focus();if(this.setSelectionRange){this.setSelectionRange(g,a);}else{var c=this.get("value");var d=c.substr(g,a-g).replace(/\r/g,"").length;g=c.substr(0,g).replace(/\r/g,"").length;var b=this.createTextRange();b.collapse(true);b.moveEnd("character",g+d);b.moveStart("character",g);b.select();}return this;},insertAtCursor:function(b,a){var d=this.getSelectedRange();var c=this.get("value");this.set("value",c.substring(0,d.start)+b+c.substring(d.end,c.length));if(a!==false){this.selectRange(d.start,d.start+b.length);}else{this.setCaretPosition(d.start+b.length);}return this;},insertAroundCursor:function(b,a){b=$extend({before:"",defaultMiddle:"",after:""},b);var c=this.getSelectedText()||b.defaultMiddle;var i=this.getSelectedRange();var h=this.get("value");if(i.start==i.end){this.set("value",h.substring(0,i.start)+b.before+c+b.after+h.substring(i.end,h.length));this.selectRange(i.start+b.before.length,i.end+b.before.length+c.length);}else{var d=h.substring(i.start,i.end);this.set("value",h.substring(0,i.start)+b.before+d+b.after+h.substring(i.end,h.length));var g=i.start+b.before.length;if(a!==false){this.selectRange(g,g+d.length);}else{this.setCaretPosition(g+h.length);}}return this;}});var kbbcode=new Class({Implements:Options,options:{displatchChangeEvent:false,changeEventDelay:1000,interceptTabs:true},initialize:function(b,c,a){this.el=document.id(b);this.selection={start:0,end:0};this.setOptions(a);if(this.options.dispatchChangeEvent){this.el.addEvents({focus:function(d){this.timer=this.watchChange.periodical(this.options.changeEventDelay,this);}.bind(this),blur:function(d){this.timer=$clear(this.timer);}.bind(this),select:function(d){this.selection=this.el.getSelectedRange();}.bind(this),click:function(d){this.selection=this.el.getSelectedRange();}.bind(this),keyup:function(d){this.selection=this.el.getSelectedRange();}.bind(this)});}if(this.options.interceptTabs){this.el.addEvent("keypress",function(d){d=new Event(d);if(d.key=="tab"){d.preventDefault();this.replaceSelection("\t");}}.bind(this));}if(!$defined(c)||c==""){c=new Element("li");c.inject(this.el,"before");this.list=c;}else{this.list=document.id(c);}this.oldContent=this.el.get("value");this.list.empty();},watchChange:function(){if(this.oldContent!=this.el.get("value")){this.oldContent=this.el.get("value");this.el.fireEvent("change");}},focus:function(){if(Browser.Engine.trident){this.el.selectRange(this.selection.start,this.selection.end);}return this;},getSelection:function(){return this.el.getSelectedText();},wrapSelection:function(c,b,a){a=(a===null)?true:a;this.el.insertAroundCursor({before:c,after:b,defaultMiddle:""});if(!a){this.el.selectRange(this.el.getSelectionEnd(),this.el.getSelectionEnd());}this.selection=this.el.getSelectedRange();},insert:function(c,b,a){a=(a===null)?true:a;var d=(b=="before")?this.el.getSelectionStart():this.el.getSelectionEnd();this.el.selectRange(d,d);this.el.insertAtCursor(c,a);this.selection=this.el.getSelectedRange();},replaceSelection:function(b,a){a=(a===null)?true:a;this.el.insertAtCursor(b,a);this.selection=this.el.getSelectedRange();},processEachLine:function(c){var a=this.el.getSelectedText().split("\n");var b=[];a.each(function(d){if(d.trim()!=""){b.push(c.attempt(d.trim(),this));}}.bind(this));this.el.insertAtCursor(b.join("\r\n"),true);},getValue:function(){return this.el.get("value");},setValue:function(a){this.el.set("value",a);this.el.focus();},addFunction:function(c,g,b){var d=new Element("li");var a=new Element("a",{events:{click:function(h){new Event(h).stop();g.attempt(null,this);}.bind(this)},href:"#"});a.set("html","<span>"+c+"</span>");a.setProperties(b||{});a.inject(d,"bottom");d.injectInside(this.list);}});var _currentElement="";var _previewActive=false;function kToggleOrSwap(a){e=document.id(a);if(e){if(e.getStyle("display")=="none"){if(_currentElement!=""){_currentElement.setStyle("display","none");}e.setStyle("display","block");_currentElement=e;}else{e.setStyle("display","none");_currentElement="";}}}function kToggleOrSwapPreview(b){e=document.id("kbbcode-preview");f=document.id("kbbcode-message");if(e){if(e.getStyle("display")=="none"||e.getProperty("class")!=b){e.setStyle("display","block");if(b=="kbbcode-preview-right"){f.setStyle("width","47%");}else{f.setStyle("width","95%");}_previewActive=true;kPreviewHelper();}else{e.setStyle("display","none");f.setStyle("width","95%");_previewActive=false;}e.setProperty("class",b);var a=f.getStyle("height");e.setStyle("height",f.getStyle("height"));}}function kGenerateColorPalette(h,c){var j=0,i=0,a=0;var k=new Array(6);var d="";k[0]="00";k[1]="44";k[2]="88";k[3]="BB";k[4]="FF";document.writeln('<table id="kbbcode-colortable" class="kbbcode-colortable" cellspacing="1" cellpadding="0" border="0" style="width: 100%;">');for(j=0;j<5;j++){document.writeln("<tr>");for(i=0;i<5;i++){for(a=0;a<5;a++){d=String(k[j])+String(k[i])+String(k[a]);document.writeln('<td style="background-color:#'+d+"; width: "+h+"; height: "+c+';">&nbsp;</td>');}}document.writeln("</tr>");}document.writeln("</table>");}function kInsertCode(){var a=document.id("kcodetype").get("value");if(a!=""){a=" type="+a;}kbbcode.focus().wrapSelection("[code"+a+"]","[/code]",false);kToggleOrSwap("kbbcode-code-options");}function kInsertImageLink(){var a=document.id("kbbcode-image_size").get("value");if(a==""){kbbcode.focus().replaceSelection("[img]"+document.id("kbbcode-image_url").get("value")+"[/img]",false);}else{kbbcode.focus().replaceSelection("[img size="+a+"]"+document.id("kbbcode-image_url").get("value")+"[/img]",false);}kToggleOrSwap("kbbcode-image-options");}function kGrowShrinkMessage(g){var a=document.id("kbbcode-message");var d=document.id("kbbcode-preview");var b=parseInt(a.getStyle("height"));var c=b+g;if(c>100){a.setStyle("height",c+"px");d.setStyle("height",c+"px");}else{a.setStyle("height","100px");d.setStyle("height","100px");}}function myValidate(a){if(document.formvalidator.isValid(a)){return true;}return false;}function cancelForm(){document.forms.postform.action.value="cancel";return true;}var __attachment_limit=0;function newAttachment(){if(__attachment_limit<config_attachment_limit){__attachment_limit++;}else{return false;}var d=document.id("kattachment-id");if(!d){return;}d.setStyle("display","none");d.getElement("input").setProperty("value","");var b=d.retrieve("nextid",1);d.store("nextid",b+1);var c=d.clone().inject(d,"before").set("id","kattachment"+b).setStyle("display");c.getElement("span.kattachment-id-container").set("text",b+". ");var a=c.getElement("input.kfile-input").set("name","kattachment"+b).removeProperty("onchange");a.addEvent("change",function(){this.removeEvents("change");var g=this.get("value");if(g.lastIndexOf("\\")>-1){g=g.substring(1+g.lastIndexOf("\\"));}this.addEvent("change",function(){c.getElement("input.kfile-input-textbox").set("value",g);});c.getElement("input.kfile-input-textbox").set("value",g);c.getElement(".kattachment-insert").removeProperty("style").addEvent("click",function(){kbbcode.focus().insert("\n[attachment:"+b+"]"+g+"[/attachment]\n","after",false);return false;});c.getElement(".kattachment-remove").removeProperty("style").addEvent("click",function(){c.dispose();return false;});newAttachment();});}function bindAttachments(){var a=$$(".kattachment-old");if(!a){return;}a.each(function(b){b.getElement(".kattachment-insert").removeProperty("style").addEvent("click",function(){kbbcode.focus().insert("\n[attachment="+b.getElement('input[type="checkbox"]').get("value")+"]"+b.getElement(".kfilename").get("text")+"[/attachment]\n","after",false);return false;});});}function IEcompatibility(){if(Browser.Engine.trident){var a=$$("#kbbcode-size-options","#kbbcode-size-options span","#kbbcode-colortable","#kbbcode-colortable td");if(a){a.setProperty("unselectable","on");}}}Selectors.Pseudo.selected=function(){return(this.selected&&this.get("tag")=="option");};function kInsertVideo1(){var d=document.id("kvideosize").get("value");var a=document.id("kvideowidth").get("value");if(a==""){a="425";}var c=document.id("kvideoheight").get("value");if(c==""){c="344";}var g=document.id("kvideoprovider").get("value");if(g==""){g="";}var b=document.id("kvideoid").get("value");kbbcode.focus().insert("[video"+(d?" size="+d:"")+" width="+a+" height="+c+" type="+g+"]"+b+"[/video]","after",false);kToggleOrSwap("kbbcode-video-options");}function kInsertVideo2(){var a=document.id("kvideourl").get("value");kbbcode.focus().insert("[video]"+a+"[/video]","after",false);kToggleOrSwap("kbbcode-video-options");}function kEditorInitialize(){$$("#kbbcode-toolbar li a").addEvent("mouseover",function(){document.id("helpbox").set("value",this.getProperty("alt"));});document.id("kbbcode-message").addEvent("change",function(){kPreviewHelper();});var a=$$("table.kbbcode-colortable td");if(a){a.addEvent("click",function(){var c=this.getStyle("background-color");kbbcode.focus().wrapSelection("[color="+c+"]","[/color]",true);kToggleOrSwap("kbbcode-color-options");});}var b=$$("div#kbbcode-size-options span");if(b){b.addEvent("click",function(){var c=this.get("title");kbbcode.focus().wrapSelection(c,"[/size]",true);kToggleOrSwap("kbbcode-size-options");});}bindAttachments();newAttachment();if(document.id("kvideoprovider")!=undefined){document.id("kvideoprovider").addEvent("change",function(){var c=$$("#kvideoprovider option:selected");c.each(function(d){document.id("kvideoprovider").store("videoprov",d.value);});});}IEcompatibility();}