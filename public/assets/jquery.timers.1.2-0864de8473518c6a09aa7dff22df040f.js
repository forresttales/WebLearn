jQuery.fn.extend({everyTime:function(e,r,t,i){return this.each(function(){jQuery.timer.add(this,e,r,t,i)})},oneTime:function(e,r,t){return this.each(function(){jQuery.timer.add(this,e,r,t,1)})},stopTime:function(e,r){return this.each(function(){jQuery.timer.remove(this,e,r)})}}),jQuery.extend({timer:{global:[],guid:1,dataKey:"jQuery.timer",regex:/^([0-9]+(?:\.[0-9]*)?)\s*(.*s)?$/,powers:{ms:1,cs:10,ds:100,s:1e3,das:1e4,hs:1e5,ks:1e6},timeParse:function(e){if(void 0==e||null==e)return null;var r=this.regex.exec(jQuery.trim(e.toString()));if(r[2]){var t=parseFloat(r[1]),i=this.powers[r[2]]||1;return t*i}return e},add:function(e,r,t,i,n){var a=0;if(jQuery.isFunction(t)&&(n||(n=i),i=t,t=r),r=jQuery.timer.timeParse(r),!("number"!=typeof r||isNaN(r)||0>r)){("number"!=typeof n||isNaN(n)||0>n)&&(n=0),n=n||0;var u=jQuery.data(e,this.dataKey)||jQuery.data(e,this.dataKey,{});u[t]||(u[t]={}),i.timerID=i.timerID||this.guid++;var o=function(){(++a>n&&0!==n||i.call(e,a)===!1)&&jQuery.timer.remove(e,t,i)};o.timerID=i.timerID,u[t][i.timerID]||(u[t][i.timerID]=window.setInterval(o,r)),this.global.push(e)}},remove:function(e,r,t){var i,n=jQuery.data(e,this.dataKey);if(n){if(r){if(n[r]){if(t)t.timerID&&(window.clearInterval(n[r][t.timerID]),delete n[r][t.timerID]);else for(var t in n[r])window.clearInterval(n[r][t]),delete n[r][t];for(i in n[r])break;i||(i=null,delete n[r])}}else for(r in n)this.remove(e,r,t);for(i in n)break;i||jQuery.removeData(e,this.dataKey)}}}}),jQuery(window).bind("unload",function(){jQuery.each(jQuery.timer.global,function(e,r){jQuery.timer.remove(r)})});