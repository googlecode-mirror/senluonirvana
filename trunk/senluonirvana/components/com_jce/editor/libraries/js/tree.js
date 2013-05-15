/*  
 * JCE Editor                 2.2.4
 * @package                 JCE
 * @url                     http://www.joomlacontenteditor.net
 * @copyright               Copyright (C) 2006 - 2012 Ryan Demmer. All rights reserved
 * @license                 GNU/GPL Version 2 or later - http://www.gnu.org/licenses/gpl-2.0.html
 * @date                    16 July 2012
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.

 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * NOTE : Javascript files have been compressed for speed and can be uncompressed using http://jsbeautifier.org/
 */
(function($){$.widget("ui.tree",{options:{rootName:'Root',rootClass:'root',loaderClass:'load',collapseTree:false,charLength:false},_init:function(){var self=this;if(!this.element)
return;this._trigger('onInit',null,function(){self._nodeEvents();});},_nodeEvents:function(parent){var self=this;if(!parent){parent=this.element;}
$('ul:first',parent).attr({'role':'tree'}).children('li').attr('aria-level',1);$('li',parent).attr({'role':'treeitem'}).attr('aria-expanded',function(){return $(this).hasClass('open')?true:false;}).attr('aria-level',function(i,v){if(!v){return parseFloat($(this.parentNode.parentNode).attr('aria-level'))+1;}});$('ul:gt(0)',parent).attr({'role':'group'});$('div.tree-image',parent).attr('role','presentation').each(function(){var p=self._findParent(this);$(this).click(function(e){self.toggleNode(e,p);});});$('span',parent).attr('role','presentation').each(function(){if(!$.support.cssFloat){this.onselectstart=function(){return false;};}
if($.browser.gecko){$(this).css('moz-user-select','none');}}).click(function(e){var p=self._findParent(this);self._trigger('onNodeClick',e,p);});},_hasNodes:function(parent){if($.type(parent)=='string'){parent=this._findParent(parent);}
var c=$('li',parent);return c.length>1||(c.length==1&&!$(c).is('.spacer'));},_isNode:function(id,parent){var n=this._findNode(id,parent);return n.length?true:false;},_getNode:function(parent){if($.type(parent)=='string'){parent=this._findParent(parent);}
return $(parent).find('ul.tree-node');},_resetNodes:function(){$('span, div.tree-image',this.element).removeClass('open');},renameNode:function(id,name){var parent=$.String.dirname(id);var node=this._findNode(id,parent);$(node).attr('id',name);$('a:first',node).html($.String.basename(name));$('li[id^="'+this._escape(encodeURI(id))+'"]',node).each(function(n){var nt=$(n).attr('id');$(n).attr('id',nt.replace(id,name));});},removeNode:function(id){var parent=$.String.dirname(id);var node=this._findNode(id,parent);var ul=$(node).parent('ul');$(node).remove();if(ul&&!this._hasNodes(ul)){$(ul).remove();}},createNode:function(nodes,parent){var self=this;var e,p,h,l,np,i;if(!nodes.length){return;}
if(!parent){parent=$.String.dirname($(nodes[0]).attr('id'));}
if($.type(parent)=='string'){parent=this._findParent(parent);}
if(nodes&&nodes.length){var ul=$('ul.tree-node:first',parent)||null;if(!ul.length){ul=document.createElement('ul');$(ul).attr({'role':'group'}).addClass('tree-node').append('<li class="spacer" role="treeitem" aria-expanded="false"></li>');$(parent).append(ul);}
$.each(nodes,function(i,node){if(!self._isNode(node.id,parent)){if(!node['class']){node['class']='folder';}
var title=node.name||node.id;title=$.String.decode(title);name=title;len=self.options.charLength;if(len&&name.length>len){name=name.substring(0,len)+'...';}
var img=/folder/.test(node['class'])?'tree-image':'tree-noimage';var url=!node.url?'javascript:;':node.url;var li=document.createElement('li');$(li).attr({'id':self._escape(encodeURI(node.id))}).append('<div class="tree-row">'
+'<div role="presentation" class="'+img
+'"></div>'+'<span role="presentation" class="'
+node['class']+'">'
+'<a href="'+url
+'" title="'+title+'">'
+name+'</a>'+'</span>'
+'</div>').attr('aria-level',parseFloat($(parent).attr('aria-level'))+1);$(ul).append(li);$('div.tree-row',li).hover(function(){$(this).addClass('hover');},function(){$(this).removeClass('hover');});$('div.tree-image',li).click(function(e){self.toggleNode(e,li);});$('span',li).click(function(e){self._trigger('onNodeClick',e,li);});self.toggleNodeState(parent,1);self._trigger('onNodeCreate');}else{self.toggleNodeState(parent,1);}});}else{this.toggleNodeState(parent,1);}},_findParent:function(el){if($.type(el)=='string'){return $('li[id="'+this._encode(el)+'"]:first',this.element);}else{return $(el).parents('li:first');}},_findNode:function(id,parent){if(!parent||parent=='/'){parent=this.element;}
if($.type(parent)=='string'){parent=this._findParent(parent);}
return $('li[id="'+this._escape(this._encode(id))+'"]:first',parent);},toggleLoader:function(node){$('span:first',node).toggleClass(this.options.loaderClass);},_collapseNodes:function(ex){var self=this;if(!ex)
this._resetNodes();var parent=$(ex).parent();$('li',parent).each(function(el){if(el!=ex){if($(el).parent()==parent){self.toggleNodeState(el,0);var child=self._getNode(el);if(child){$(child).addClass('hide');}}}});},toggleNodeState:function(node,state){if(state==1){$(node).addClass('open').attr('aria-expanded',true);}else{$(node).removeClass('open').attr('aria-expanded',false);}
if(state==1){if(node.id=='/'){return;}
var c=$('ul.tree-node',node);if(c.length){if($(node).hasClass('open')){$(c).removeClass('hide');}else{$(c).addClass('hide');}}}},toggleNode:function(e,node){if(e.shiftKey){return this._trigger('onNodeLoad',e,node);}
var child=this._getNode(node);if(!child.length){if($('div.tree-image',node).hasClass('open')){this.toggleNodeState(node);}else{this._trigger('onNodeLoad',e,node);}}else{$(child).toggleClass('hide');this.toggleNodeState(node);}
if(this.options.collapseTree){this._collapseNodes(node);}},_encode:function(s){s=decodeURIComponent(s);return encodeURIComponent(s).replace(/%2F/gi,'\/');},_escape:function(s){return s.replace(/'/,'%27');},destroy:function(){$.Widget.prototype.destroy.apply(this,arguments);}});$.extend($.ui.tree,{version:"2.2.4"});})(jQuery);