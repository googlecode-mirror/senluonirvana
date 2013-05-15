(function(c){jQuery.fn.reverse=Array.prototype.reverse;var a={setup:function(j,k,i){j.css("position","relative");a.saveInitialPosition(k);k.each(function(m){var l=c(this);l.css({position:"absolute",left:l.data("left"),top:l.data("top")})});var e=Math.floor(j.width()/k.width()),h=e*i.rows,g=Math.ceil(k.length/e);var f={};f.currentRow=1;f.totalRows=g;f.rowCount=e;f.shownItems=h;j.data("config",f);j.children(":gt("+(h-1)+")").hide();k.each(function(m){var l=c(this),n=Math.ceil((m+1)/e);l.addClass("tj_row_"+n)});d.setup(j,k,i)},saveInitialPosition:function(e){e.each(function(g){var f=c(this);f.data({left:f.position().left+"px",top:f.position().top+"px"})})}},d={setup:function(f,g,e){d[e.type.mode].setup(f,g,e)},def:{setup:function(g,h,f){var e=g.data("config");h.each(function(l){var j=c(this),n=Math.ceil((l+1)/e.rowCount),k,m=n%f.rows;if(m===1){k="0px"}else{if(m===0){k=(f.rows-1)*h.height()+"px"}else{k=(m-1)*h.height()+"px"}}j.css({top:k})})},pagination:function(l,g,k){var f=l.data("config");if((g===1&&f.currentRow+k.rows>f.totalRows)||(g===-1&&f.currentRow-k.rows<=0)){l.data("anim",false);return false}var j="",e="";for(var h=0;h<k.rows;++h){j+=".tj_row_"+(f.currentRow+h)+",";(g===1)?e+=".tj_row_"+(f.currentRow+k.rows+h)+",":e+=".tj_row_"+(f.currentRow-1-h)+","}l.children(j).hide();l.children(e).show();(g===1)?f.currentRow+=k.rows:f.currentRow-=k.rows;l.data("anim",false);l.data("config",f)}},fade:{setup:function(f,g,e){d.def.setup(f,g,e)},pagination:function(l,j,e){var h=l.data("config");if((j===1&&h.currentRow+e.rows>h.totalRows)||(j===-1&&h.currentRow-e.rows<=0)){l.data("anim",false);return false}var n="",f="";for(var k=0;k<e.rows;++k){n+=".tj_row_"+(h.currentRow+k)+",";(j===1)?f+=".tj_row_"+(h.currentRow+e.rows+k)+",":f+=".tj_row_"+(h.currentRow-1-k)+","}l.children(n).fadeOut(e.type.speed,e.type.easing);var o=l.children(f),m=o.length,g=0;o.fadeIn(e.type.speed,e.type.easing,function(){++g;if(g===m){l.data("anim",false)}});(j===1)?h.currentRow+=e.rows:h.currentRow-=e.rows;l.data("config",h)}},seqfade:{setup:function(f,g,e){d.def.setup(f,g,e)},pagination:function(m,k,e){var j=m.data("config");if((k===1&&j.currentRow+e.rows>j.totalRows)||(k===-1&&j.currentRow-e.rows<=0)){m.data("anim",false);return false}var p="",f="";for(var l=0;l<e.rows;++l){p+=".tj_row_"+(j.currentRow+l)+",";(k===1)?f+=".tj_row_"+(j.currentRow+e.rows+l)+",":f+=".tj_row_"+(j.currentRow-1-l)+","}var g=e.type.factor;var n;(k===1)?n=m.children(p):n=m.children(p).reverse();n.each(function(s){var r=c(this);setTimeout(function(){r.fadeOut(e.type.speed,e.type.easing)},g+s*g)});var q;(k===1)?q=m.children(f):q=m.children(f).reverse();var o=q.length,h=0;q.each(function(s){var r=c(this);setTimeout(function(){r.fadeIn(e.type.speed,e.type.easing,function(){++h;if(h===o){m.data("anim",false)}})},(g*2)+s*g)});(k===1)?j.currentRow+=e.rows:j.currentRow-=e.rows;m.data("config",j)}},updown:{setup:function(g,h,f){var e=g.data("config");g.children(":gt("+(e.shownItems-1)+")").css("opacity",0);h.each(function(l){var j=c(this),n=Math.ceil((l+1)/e.rowCount),k=j.position().top,m=n%f.rows;if(n>f.rows){k=(f.rows*h.height())}j.css({top:k+"px"})})},pagination:function(k,h,e){var g=k.data("config");if((h===1&&g.currentRow+e.rows>g.totalRows)||(h===-1&&g.currentRow-1<=0)){k.data("anim",false);return false}var n="";for(var j=0;j<=e.rows;++j){(h===1)?n+=".tj_row_"+(g.currentRow+j)+",":n+=".tj_row_"+(g.currentRow+(j-1))+","}var l;(h===1)?l=k.children(n):l=k.children(n).reverse();var m=l.length,f=0;l.each(function(q){var p=c(this),s=p.attr("class"),r={},o=g.currentRow;if(h===1){if(s==="tj_row_"+(o)){r.opacity=0}else{if(s==="tj_row_"+(o+e.rows)){r.opacity=1}}}else{if(s==="tj_row_"+(o-1)){r.opacity=1}else{if(s==="tj_row_"+(o+e.rows-1)){r.opacity=0}}}p.show();(h===1)?r.top=p.position().top-p.height()+"px":r.top=p.position().top+p.height()+"px";p.stop().animate(r,e.type.speed,e.type.easing,function(){if(parseInt(r.top)<0||parseInt(r.top)>p.height()*(e.rows-1)){p.hide()}++f;if(f===m){k.data("anim",false)}})});(h===1)?g.currentRow+=1:g.currentRow-=1;k.data("config",g)}},sequpdown:{setup:function(f,g,e){d.updown.setup(f,g,e)},pagination:function(m,k,e){var j=m.data("config");if((k===1&&j.currentRow+e.rows>j.totalRows)||(k===-1&&j.currentRow-1<=0)){m.data("anim",false);return false}var p="";for(var l=0;l<=e.rows;++l){(k===1)?p+=".tj_row_"+(j.currentRow+l)+",":p+=".tj_row_"+(j.currentRow+(l-1))+","}var f=e.type.factor,n;var g=1;if(e.type.reverse){g=-1}(k===g)?n=m.children(p):n=m.children(p).reverse();var o=n.length,h=0;n.each(function(s){var r=c(this),u=r.attr("class"),t={},q=j.currentRow;setTimeout(function(){if(k===1){if(u==="tj_row_"+(q)){t.opacity=0}else{if(u==="tj_row_"+(q+e.rows)){t.opacity=1}}}else{if(u==="tj_row_"+(q-1)){t.opacity=1}else{if(u==="tj_row_"+(q+e.rows-1)){t.opacity=0}}}r.show();(k===1)?t.top=r.position().top-r.height()+"px":t.top=r.position().top+r.height()+"px";r.stop().animate(t,e.type.speed,e.type.easing,function(){if(parseInt(t.top)<0||parseInt(t.top)>r.height()*(e.rows-1)){r.hide()}++h;if(h===o){m.data("anim",false)}})},f+s*f)});(k===1)?j.currentRow+=1:j.currentRow-=1;m.data("config",j)}},showhide:{setup:function(g,h,f){var e=g.data("config");h.each(function(l){var j=c(this),n=Math.ceil((l+1)/e.rowCount),k,m=n%f.rows;if(m===1){k="0px"}else{if(m===0){k=(f.rows-1)*h.height()+"px"}else{k=(m-1)*h.height()+"px"}}j.css({top:k})})},pagination:function(l,j,e){var h=l.data("config");if((j===1&&h.currentRow+e.rows>h.totalRows)||(j===-1&&h.currentRow-e.rows<=0)){l.data("anim",false);return false}var n="",f="";for(var k=0;k<e.rows;++k){n+=".tj_row_"+(h.currentRow+k)+",";(j===1)?f+=".tj_row_"+(h.currentRow+e.rows+k)+",":f+=".tj_row_"+(h.currentRow-1-k)+","}l.children(n).hide(e.type.speed,e.type.easing);var o=l.children(f),m=o.length,g=0;o.show(e.type.speed,e.type.easing,function(){++g;if(g===m){l.data("anim",false)}});(j===1)?h.currentRow+=e.rows:h.currentRow-=e.rows;l.data("config",h)}},disperse:{setup:function(g,h,f){var e=g.data("config");h.each(function(l){var j=c(this),n=Math.ceil((l+1)/e.rowCount),k,m=n%f.rows;if(m===1){k="0px"}else{if(m===0){k=(f.rows-1)*h.height()+"px"}else{k=(m-1)*h.height()+"px"}}j.css({top:k}).data("top",k)})},pagination:function(m,h,l){var g=m.data("config");if((h===1&&g.currentRow+l.rows>g.totalRows)||(h===-1&&g.currentRow-l.rows<=0)){m.data("anim",false);return false}var k="",e="";for(var j=0;j<l.rows;++j){k+=".tj_row_"+(g.currentRow+j)+",";(h===1)?e+=".tj_row_"+(g.currentRow+l.rows+j)+",":e+=".tj_row_"+(g.currentRow-1-j)+","}m.children(k).each(function(o){var n=c(this);n.stop().animate({left:n.position().left+Math.floor(Math.random()*101)-50+"px",top:n.position().top+Math.floor(Math.random()*101)-50+"px",opacity:0},l.type.speed,l.type.easing,function(){n.css({left:n.data("left"),top:n.data("top")}).hide()})});var f=m.children(e);total_elems=f.length,cnt=0;f.each(function(o){var n=c(this);n.css({left:parseInt(n.data("left"))+Math.floor(Math.random()*301)-150+"px",top:parseInt(n.data("top"))+Math.floor(Math.random()*301)-150+"px",opacity:0}).show().animate({left:n.data("left"),top:n.data("top"),opacity:1},l.type.speed,l.type.easing,function(){++cnt;if(cnt===total_elems){m.data("anim",false)}})});(h===1)?g.currentRow+=l.rows:g.currentRow-=l.rows;m.data("config",g)}},rows:{setup:function(f,g,e){d.def.setup(f,g,e)},pagination:function(m,h,l){var g=m.data("config");if((h===1&&g.currentRow+l.rows>g.totalRows)||(h===-1&&g.currentRow-l.rows<=0)){m.data("anim",false);return false}var k="",e="";for(var j=0;j<l.rows;++j){k+=".tj_row_"+(g.currentRow+j)+",";(h===1)?e+=".tj_row_"+(g.currentRow+l.rows+j)+",":e+=".tj_row_"+(g.currentRow-1-j)+","}m.children(k).each(function(o){var n=c(this),q=n.attr("class").match(/tj_row_(\d+)/)[1],p;if(q%2===0){p=l.type.factor}else{p=-l.type.factor}n.stop().animate({left:n.position().left+p+"px",opacity:0},l.type.speed,l.type.easing,function(){n.css({left:n.data("left")}).hide()})});var f=m.children(e);total_elems=f.length,cnt=0;f.each(function(o){var n=c(this),q=n.attr("class").match(/tj_row_(\d+)/)[1],p;if(q%2===0){p=l.type.factor}else{p=-l.type.factor}n.css({left:parseInt(n.data("left"))+p+"px",opacity:0}).show().animate({left:n.data("left"),opacity:1},l.type.speed,l.type.easing,function(){++cnt;if(cnt===total_elems){m.data("anim",false)}})});(h===1)?g.currentRow+=l.rows:g.currentRow-=l.rows;m.data("config",g)}}},b={init:function(e){if(this.length){var f={rows:2,navL:"#tj_prev",navR:"#tj_next",type:{mode:"def",speed:500,easing:"jswing",factor:50,reverse:false}};return this.each(function(){if(e){c.extend(f,e)}var i=c(this).css("visibility","hidden"),l=i.find("ul.tj_gallery"),h=l.children("li"),j=h.length,m=c(f.navL),k=c(f.navR);l.data("anim",false);var g=0;h.find("img").each(function(o){var n=c(this);c("<img/>").load(function(){++g;if(g===j){a.setup(l,h,f);i.css("visibility","visible");if(m.length){m.bind("click.gridnav",function(p){if(l.data("anim")){return false}l.data("anim",true);d[f.type.mode].pagination(l,-1,f);return false})}if(k.length){k.bind("click.gridnav",function(p){if(l.data("anim")){return false}l.data("anim",true);d[f.type.mode].pagination(l,1,f);return false})}i.bind("mousewheel.gridnav",function(p,q){if(q>0){if(l.data("anim")){return false}l.data("anim",true);d[f.type.mode].pagination(l,-1,f)}else{if(l.data("anim")){return false}l.data("anim",true);d[f.type.mode].pagination(l,1,f)}return false})}}).attr("src",n.attr("src"))})})}}};c.fn.gridnav=function(e){if(b[e]){return b[e].apply(this,Array.prototype.slice.call(arguments,1))}else{if(typeof e==="object"||!e){return b.init.apply(this,arguments)}else{c.error("Method "+e+" does not exist on jQuery.gridnav")}}}})(jQuery);