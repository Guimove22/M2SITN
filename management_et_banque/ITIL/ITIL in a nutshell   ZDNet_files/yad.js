/*! YAD - v1.0.0 - eca118e - 2014-10-30
 *  Yahoo Personalised Content Widget
 *  Copyright (c) 2014 ; Licensed  */
(function(){var f=window.document,e={Error:function(a){this.message=a},Bootstrap:function(a,b,c){this.widgetInitialisationStartedAt=this.timeSinceNavigationStart();this.snippetLoadedAt=c?this.timeSinceNavigationStart(c):null;this.config=b;this.publisherId=a;this.config.analytics||(this.config.analytics={});this.id=this.config.id;this.config.analytics.pageURL=e.Helper.detectPageURL();this.config.analytics.referrer=e.Helper.detectReferrer();this.config.analytics.click_postmsg={payload:{action:"redirect",
id:this.id}};this.config.canonicalURL=e.Helper.detectCanonical();this.init()}};e.Bootstrap.prototype={init:function(){this.element="undefined"!==typeof this.config.element?this.config.element:e.Helper.detectScriptTag();delete this.config.element;var a=this.iframeURL();this.iframe=this.createIframeElement(a);var b=this;window.addEventListener?this.iframe.addEventListener("load",function(){b.sendPostMessage({action:"init",config:b.config,id:b.id,url:e.Helper.detectPageURL(),tti:b.widgetInitialisationStartedAt,
tts:b.snippetLoadedAt,cid:b.publisherId})}):window.attachEvent&&this.iframe.attachEvent("onload",function(){b.sendPostMessage({action:"init",config:b.config,id:b.id,url:e.Helper.detectPageURL(),tti:b.widgetInitialisationStartedAt,tts:b.snippetLoadedAt,cid:b.publisherId})});this.listen();this.render()},listenForViewport:function(){var a=this,b=null,c=null,d=function(d){return function(){var e=a.isElementInViewport(d,0);e&&!a.hasBeenInViewport&&(a.hasBeenInViewport=!0,a.sendPostMessage({action:"inViewport"}));
if(e){var f=function(){var b=a.iframeRelativeScrollPosition(d);a.sendPostMessage({action:"scroll",scrollTop:b[0],scrollLeft:b[1],height:a.iframeRelativeHeight(d),width:a.iframeRelativeWidth(d)})};window.clearTimeout(b);b=window.setTimeout(function(){window.clearInterval(c);f();c=null},350);null===c&&(c=window.setInterval(f,500),f())}}}(this.iframe);window.addEventListener?(window.addEventListener("DOMContentLoaded",d,!1),window.addEventListener("load",d,!1),window.addEventListener("scroll",d,!1),
window.addEventListener("resize",d,!1)):window.attachEvent&&(window.attachEvent("DOMContentLoaded",d),window.attachEvent("onload",d),window.attachEvent("onscroll",d),window.attachEvent("onresize",d));d()},iframeURL:function(){return e.Bootstrap.IFRAME_URL},createIframeElement:function(a){var b=f.createElement("iframe");b.frameBorder=0;b.width="100%";b.height="0";b.setAttribute("style","display:block");b.setAttribute("src",a);return b},sendPostMessage:function(a){return e.PostMessage.send(a,e.Bootstrap.IFRAME_DOMAIN,
this.iframe.contentWindow)},listen:function(){e.PostMessage.listen(this.onReceivePostMessage,e.Bootstrap.IFRAME_DOMAIN,this)},render:function(){this.element.appendChild(this.iframe)},onReceivePostMessage:function(a){if(a.id===this.id)switch(a.action){case "data":this.listenForViewport();break;case "height":this.setHeight(a.height);break;case "redirect":this.redirect(a.href);break;case "hide":this.hide();break;case "error":this.config.onError&&"function"===typeof this.config.onError&&this.config.onError.apply(this,
[Error("widget failed to load")]);break;case "about":e.Lightbox.About()}},hide:function(){this.iframe&&(this.iframe.style.display="none");this.element&&this.element.setAttribute("class",this.element.getAttribute("class")+" yad-empty")},redirect:function(a){window.location=a},setHeight:function(a){this.iframe.height=a+"px"},isElementInViewport:function(a,b){"undefined"===typeof b&&(b=0);var c,d;"undefined"!==typeof window.pageXOffset?c=window.pageXOffset:f.documentElement&&"undefined"!==typeof f.documentElement.scrollLeft?
c=f.documentElement.scrollLeft:"undefined"!==typeof f.body.scrollLeft&&(c=f.body.scrollLeft);"undefined"!==typeof window.pageYOffset?d=window.pageYOffset:f.documentElement&&"undefined"!==typeof f.documentElement.scrollTop?d=f.documentElement.scrollTop:"undefined"!==typeof f.body.scrollTop&&(d=f.body.scrollTop);var e,g;g=e=0;e="undefined"!==typeof window.innerWidth?window.innerWidth:f.documentElement.clientWidth;g="undefined"!==typeof window.innerHeight?window.innerHeight:f.documentElement.clientHeight;
e=c+e;g=d+g;var h=b,k=a.getBoundingClientRect(),l=k.right-k.left,n=k.bottom-k.top,m=k.top+d,k=k.left+c,p,q;p=k+l*(1-h);q=m+n*(1-h);return!(e<k+l*h||c>p||g<m+n*h||d>q)},iframeRelativeHeight:function(a){var b=a.getBoundingClientRect(),c=b.top,d=window.innerHeight||f.documentElement.clientHeight;a=a.scrollTop;b=b.bottom-b.top;return c<a&&b-a>=d?d:c<a?Math.max(0,b-(a-c)):c>a&&c+b<d?b:Math.max(0,d-(c-a))},iframeRelativeWidth:function(a){var b=a.getBoundingClientRect(),c=b.left,d=window.innerWidth||f.documentElement.clientWidth;
a=a.scrollLeft;b=b.right-b.left;return c<a&&b-a>=d?d:c<a?Math.max(0,b-(a-c)):c>a&&c+b<d?b:Math.max(0,d-(c-a))},iframeRelativeScrollPosition:function(a){a=a.getBoundingClientRect();var b=-1*a.top,c=-1*a.left;0<a.left&&(c=0);0<a.top&&(b=0);return 0>b||0>c?[0,0]:[Math.max(0,b),Math.max(0,c)]},timeSinceNavigationStart:function(a){if("undefined"===typeof window.performance)return!1;a||(a=(new Date).getTime());return a-window.performance.timing.domLoading}};e.Helper={templateShortname:function(a){switch(a){case "single-column-text":return"sctext";
case "single-column-thumbnail":return"scthumb";case "dual-column-thumbnail":return"dcthumb";case "dual-column-text":return"dctext";case "dual-column-text-web":return"dcwtext";case "dual-column-thumbnail-web":return"dcwthumb";case "single-row-carousel":return"srcarousel";case "dual-row-carousel":return"drcarousel";case "dual-row-carousel-web":return"drwcarousel";case "instrumentation-beacon":return"insbeacon";case "error":return"error";default:throw new e.Error("Could not get shortname for template: "+
a);}},addClass:function(a,b){var c,d=a instanceof Array?a:[a];for(c=0;c<d.length;c++)e.Helper._addClass(d[c],b)},_addClass:function(a,b){a.classList?a.classList.add(b):e.Helper.containClass(a,b)||(a.className+=" "+b)},removeClass:function(a,b){var c,d=a instanceof Array?a:[a];for(c=0;c<d.length;c++)e.Helper._removeClass(d[c],b)},_removeClass:function(a,b){var c=RegExp("(\\s|^)"+b+"(\\s|$)","g");a.classList?a.classList.remove(b):a.className=a.className.replace(c," ").replace(/\s\s+/g," ")},replaceClass:function(a,
b,c){var d=a instanceof Array?a:[a];for(a=0;a<d.length;a++)e.Helper._removeClass(d[a],b),e.Helper._addClass(d[a],c)},toggleClass:function(a,b,c){var d=a instanceof Array?a:[a];for(a=0;a<d.length;a++)!0===c?e.Helper._addClass(d[a],b):!1===c?e.Helper._removeClass(d[a],b):e.Helper.containClass(d[a],b)?e.Helper._removeClass(d[a],b):e.Helper._addClass(d[a],b)},containClass:function(a,b){var c=RegExp("(\\s|^)"+b+"(\\s|$)");return a.classList?a.classList.contains(b):c.test(a.className)},getEventListenerCompatible:function(){return f.createElement("div").addEventListener?
!0:!1},bind:function(a,b,c,d,f){if(!a)throw new e.Error("Valid event not supplied");if(!b)throw new e.Error("Valid element not supplied");if(!c)throw new e.Error("Valid callback not supplied");f=f||[];a=a.split(" ");for(var g=0;g<a.length;g++)e.Helper._addEventListener(a[g],b,c,d,f)},unbind:function(a,b,c){if(!a)throw new e.Error("Valid event not supplied");if(!b)throw new e.Error("Valid element not supplied");if(!c)throw new e.Error("Valid callback not supplied");a=a.split(" ");for(var d=0;d<a.length;d++)e.Helper._removeEventListener(a[d],
b,c)},bindCustom:function(a,b,c,d,f){if(b.addEventListener)return e.Helper.bind(a,b,c,d,f);b[a]=0;return e.Helper.bind("propertychange",b,function(b){b.propertyName===a&&c.call(this,Array.prototype.slice.call(arguments,1))},d,f)},bindAll:function(a,b,c,d,f){if(b)for(var g=b.length-1;0<=g;g-=1)e.Helper.bind(a,b[g],c,d,f)},_addEventListener:function(a,b,c,d,f){if(b.addEventListener)b.addEventListener(a,function(a){a.preventDefault||(a.preventDefault=function(){this.returnValue=!1});c.apply(d,[a].concat(f))},
!1);else if(b.attachEvent)b.attachEvent("on"+a,function(a){a.preventDefault||(a.preventDefault=function(){this.returnValue=!1});c.apply(d,[a].concat(f))});else throw new e.Error("Tried to bind event to incompatible object. Object needs addEventListener (or attachEvent).");},_removeEventListener:function(a,b,c){if(b.removeEventListener)b.removeEventListener(a,c,!1);else if(b.detachEvent)b.detachEvent("on"+a,c);else throw new e.Error("Tried to bind event to incompatible object. Object needs removeEventListener (or detachEvent).");
},dispatchEvent:function(a,b,c){var d;f.createEvent?(d=f.createEvent("HTMLEvents"),d.initEvent(b,!0,!0)):f.createEventObject&&(d=f.createEventObject(),d.eventType=b);if(!d)throw new e.Error("dispatchEvent could not create click event");for(var r in c)c.hasOwnProperty(r)&&(d[r]=c[r]);d.eventName=b;if(a.dispatchEvent)a.dispatchEvent(d);else if(a.fireEvent)switch(d.eventType){case "click":case "mousedown":case "mouseover":a.fireEvent("on"+d.eventType,d);break;default:a[d.eventType]=d}else if(a[b])a[b](d);
else if(a["on"+b])a["on"+b](d)},createElement:function(a){return f.createElement(a)},addScript:function(a,b,c){return e.Helper.Ajax.addScript(a,b,c)},isVisible:function(a){return a===f?!0:a&&a.parentNode&&"none"!==e.Helper.getComputedStyleCssProperty(a,"display")&&"hidden"!==e.Helper.getComputedStyleCssProperty(a,"visibility")?e.Helper.isVisible(a.parentNode):!1},getOuterHeight:function(a){var b=e.Helper.getComputedStyleCssProperty(a,"margin-top"),c=e.Helper.getComputedStyleCssProperty(a,"margin-bottom");
try{b=parseInt(b,10),c=parseInt(c,10)}catch(d){c=b=0}return a.offsetHeight+b+c},getComputedStyleCssProperty:function(a,b){var c;if(window.getComputedStyle)return window.getComputedStyle(a).getPropertyValue(b);c=e.Helper._getCamelCasedCssProperty(b);return a.currentStyle?a.currentStyle[c]:a.style[c]},_getCamelCasedCssProperty:function(a){return a.replace(/-([a-z])/g,function(a){return a[1].toUpperCase()})},truncateString:function(a,b){if("undefined"===typeof a)return"";if(void 0===b||a.length<b)return a;
if(0>=b)return"";var c=a.substring(0,b-1),d=c.lastIndexOf(" ");d<b&&-1!==d&&(c=c.substr(0,Math.min(c.length,d)));return c+"\u2026"},htmlEntities:function(a){return String(a).replace(/&/g,"&amp;").replace(/"/g,"&quot;").replace(/'/g,"&#39;").replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/\//g,"&#x2F;").replace(/`/g,"&#x60;")},fragmentFromString:function(a){var b=f.createDocumentFragment(),c=f.createElement("body");for(c.innerHTML=a;null!==(a=c.firstChild);)b.appendChild(a);return b},stringFromFragment:function(a){var b=
f.createElement("div");b.appendChild(a);return b.innerHTML},template:function(a,b){var c,d=0,f=[];for(c in b)if(b.hasOwnProperty(c)){var g=b[c];if(this.isDocumentFragment(g)){var h="yad-template-fragment-"+d;f.push([h,g]);g='<span id="'+h+'"></span>';d++}a=a.split("{{"+c.toUpperCase()+"}}").join(g)}c=e.Helper.fragmentFromString(a);for(d=0;d<f.length;d++)g=c.querySelector("#"+f[d][0]),g.parentNode.replaceChild(f[d][1],g);return c},isDocumentFragment:function(a){try{return"undefined"!==typeof DocumentFragment&&
a instanceof DocumentFragment||"undefined"!==typeof HTMLDocument&&a instanceof HTMLDocument}catch(b){return"string"!==typeof a&&"number"!==typeof a}},merge:function(a,b){for(var c in b)b[c]&&b[c].constructor&&b[c].constructor===Object?(a[c]=a[c]||{},e.Helper.merge(a[c],b[c])):a[c]=b[c];return a},clone:function(a){return JSON.parse(JSON.stringify(a))},addStyleTag:function(a){var b=e.Helper.createElement("style");b.setAttribute("type","text/css");b.styleSheet?(f.getElementsByTagName("head")[0].appendChild(b),
b.styleSheet.cssText=a):(b.innerHTML=a,f.getElementsByTagName("head")[0].appendChild(b))},addLinkTag:function(a){var b,c=e.Helper.createElement("link");for(b in a)a.hasOwnProperty(b)&&c.setAttribute(b,a[b]);f.getElementsByTagName("head")[0].appendChild(c)},addDynamicCSS:function(a){var b,c={rel:"stylesheet",type:"text/css"},d;a.hasConfigCSS()&&e.Helper.addStyleTag("/* config CSS */ "+a.getConfigCSS());if(a.hasCSSURLs())for(b=a.getCSSURLs(),d=0;d<b.length;d++)c.href=b[d],e.Helper.addLinkTag(c);a.hasCustomCSS()&&
e.Helper.addStyleTag("/* custom CSS */ "+a.getCustomCSS())},isElementInViewport:function(a,b,c,d,e,g){"undefined"===typeof b&&(b=0);var h,k;"undefined"!==typeof window.pageXOffset?h=window.pageXOffset:f.documentElement&&"undefined"!==typeof f.documentElement.scrollLeft?h=f.documentElement.scrollLeft:"undefined"!==typeof f.body.scrollLeft&&(h=f.body.scrollLeft);"undefined"!==typeof window.pageYOffset?k=window.pageYOffset:f.documentElement&&"undefined"!==typeof f.documentElement.scrollTop?k=f.documentElement.scrollTop:
"undefined"!==typeof f.body.scrollTop&&(k=f.body.scrollTop);var l=0,n=0,l="undefined"!==typeof e?e:"undefined"!==typeof window.innerWidth?window.innerWidth:f.documentElement.clientWidth,n="undefined"!==typeof g?g:"undefined"!==typeof window.innerHeight?window.innerHeight:f.documentElement.clientHeight;c=c?c:k;d=d?d:h;l=d+l;n=c+n;g=a.getBoundingClientRect();a=g.right-g.left;h=g.bottom-g.top;e=g.top;g=g.left;var m;k=g+a*(1-b);m=e+h*(1-b);return!(l<g+a*b||d>k||n<e+h*b||c>m)},arrayIndexOf:function(a,
b){if(Array.prototype.indexOf)return b.indexOf(a);var c=b.length>>>0,d=0;Infinity===Math.abs(d)&&(d=0);0>d&&(d+=c,0>d&&(d=0));for(;d<c;d++)if(b[d]===a)return d;return-1},detectPageURL:function(){return window.location.href},detectReferrer:function(){return window.document.referrer},detectCanonical:function(){var a=f.querySelector("link[rel='canonical']");return a?a.href:!1},detectScriptTag:function(){var a=f.querySelectorAll("script");if(!a)throw new e.Error("No script tags could be found on the page");
return a[a.length-1]},getRSSUrls:function(){var a=f.querySelectorAll('link[type="application/rss+xml"]'),b,c=[];if(a){for(b=0;b<a.length;b+=1)a[b].getAttribute("href")&&c.push(a[b].getAttribute("href"));return c}},getDocumentHeight:function(a){return a.documentElement.scrollHeight},timestamp:function(){return Math.floor((new Date).valueOf()/1E3)},urlencode:function(a){return window.encodeURIComponent(a)},stripProtocol:function(a){var b=a.split("://");return 1<b.length?b[1]:a},applyEllipsis:function(a,
b){a.textContent=b&&b.replace?b.replace(/\s+$/g,"")+"\u2026":""},computeStyle:function(a,b){return window.getComputedStyle?window.getComputedStyle(a,null).getPropertyValue(b):!1},getLineHeight:function(a){var b=this.computeStyle(a,"line-height");"normal"===b&&(b=Math.ceil(1.2*parseFloat(this.computeStyle(a,"font-size"),10)));return parseFloat(b,10)},getMaxHeight:function(a,b){return this.getLineHeight(b)*a},getLastChild:function(a,b){if(a.lastChild.children&&0<a.lastChild.children.length)return this.getLastChild(Array.prototype.slice.call(a.children).pop(),
b);if(a.lastChild&&""!==a.lastChild.nodeValue)return a.lastChild;a.lastChild.parentNode.removeChild(a.lastChild);return this.getLastChild(b,b)},truncateToHeight:function(a,b,c,d){if(b&&!(0>=b)){var e=a.textContent.replace("\u2026",""),f=d.element,h=d.splitOnChars,k=d.splitChar,l=d.chunks,n=d.lastChunk;l||(k=0<h.length?h.shift():"",l=e.split(k));1<l.length?(n=l.pop(),this.applyEllipsis(a,l.join(k))):l=null;if(l){if(f.clientHeight&&f.clientHeight<=b||f.offsetHeight&&f.offsetHeight<=b)if(0<=h.length&&
""!==k)this.applyEllipsis(a,l.join(k)+k+n);else return!1}else""===k&&(this.applyEllipsis(a,""),a=this.getLastChild(f,f),d.splitOnChars=c.slice(0),d.splitChar=d.splitOnChars[0],d.chunks=null,d.lastChunk=null);this.truncateToHeight(a,b,c,d)}},clamp:function(a,b){b=b||{};if(!("undefined"!==typeof b.clamp&&1>b.clamp)){var c={clamp:b.clamp||2,splitOnChars:b.splitOnChars||[".","-"," "]},d=c.splitOnChars.slice(0),e=d[0],c=this.getMaxHeight(c.clamp,a);(a.clientHeight&&c<a.clientHeight||a.offsetHeight&&c<
a.offsetHeight)&&this.truncateToHeight(this.getLastChild(a,a),c,d,{element:a,splitOnChars:d,splitChar:e,chunks:null,lastChunk:null})}},clampTitle:function(a,b,c){if(!(1>c)&&!1!==c&&window.getComputedStyle)for(a=a.querySelectorAll(b),b=0;b<a.length;b++)this.clamp(a[b],{clamp:c})}};e.PostMessage={lastHeight:null,send:function(a,b,c){if("undefined"===typeof b)throw new e.Error("You must supply a target as a string");"undefined"===typeof c&&(c=window.parent);c.postMessage(e.PostMessage._serialize(a),
b)},listen:function(a,b,c){if("undefined"===typeof b)throw new e.Error("You must supply an origin or an array of origins");var d=function(d){if("*"!==b&&b!==d.origin)return!1;a.call(c,e.PostMessage._unserialize(d.data),d.origin,d.source)};window.addEventListener?window.addEventListener("message",d,!1):window.attachEvent("onmessage",d)},sendHeight:function(a,b,c){e.PostMessage._sendUpdateHeightMessage(a,b,c);window.setInterval(function(){e.PostMessage._sendUpdateHeightMessage(a,b,c)},1E3)},_sendUpdateHeightMessage:function(a,
b,c){var d=e.Helper.getDocumentHeight(f);e.PostMessage.lastHeight!==d&&(void 0===c&&(c={}),c.action="height",c.height=d,e.PostMessage.send(c,a,b),e.PostMessage.lastHeight=d)},_unserialize:function(a){var b=null;if("string"===typeof a){try{b=JSON.parse(a)}catch(c){}return b}return a},_serialize:function(a){return JSON.stringify(a)}};e.Lightbox=function(){this.init()};e.Lightbox.MASK_STYLE="position:fixed;top:0;left:0;z-index:99999;background-color:#000;background-color:rgba(0,0,0,0.5);width:100%;height:100%;";
e.Lightbox.CONTENT_STYLE='position:relative;margin:0 auto;top:10%;z-index:999999;background-color:#fff;width:100%;min-height:100px;max-height:80%;overflow:auto;width:400px;max-width:90%;border-radius: 5px;box-shadow: 0px 0px 20px 0px rgba(0,0,0,0.55);"';e.Lightbox.CLOSE_STYLE="position:absolute;right:0;top:0;padding:5px;cursor:pointer;text-decoration:none;color: #5f5f5f;line-height: 6px;text-align:center;margin: 6px;font-size: 22px;";e.Lightbox.About=function(){var a=new e.Lightbox;a.setContent("<iframe src='"+
e.Lightbox.ABOUT_IFRAME_URL+"' style='width:100%;height:300px' frameborder='0'></iframe>");a.show();return a};e.Lightbox.prototype={init:function(){this.lightboxContent=""},show:function(){this.exists()?this.container().style.display="block":(this.create(),this.show())},hide:function(){this.exists()&&(this.container().style.display="none")},create:function(){this.createMask();this.createContentPane();this.createCloseButton();this.bindClose()},createMask:function(){var a=f.createElement("div");a.setAttribute("class",
"yad-lightbox");a.setAttribute("style",e.Lightbox.MASK_STYLE);a.style.display="none";f.getElementsByTagName("body")[0].appendChild(a);return this.containerDiv=a},createContentPane:function(){var a=f.createElement("div");a.setAttribute("class","yad-lightbox-content");a.setAttribute("style",e.Lightbox.CONTENT_STYLE);this.container().appendChild(a);this.lightboxContent&&"string"===typeof this.lightboxContent?a.innerHTML=this.lightboxContent:this.lightboxContent&&a.appendChild(this.lightboxContent);return this.contentPane=
a},createCloseButton:function(){var a=f.createElement("a");a.setAttribute("class","yad-lightbox-close");a.setAttribute("style",e.Lightbox.CLOSE_STYLE);a.innerHTML="\u00d7";this.contentPane.appendChild(a);return a},bindClose:function(){var a=this;window.addEventListener?(this.container().addEventListener("click",function(b){b.target===a.container()&&a.closeHandler.call(a)},!1),this.container().querySelector(".yad-lightbox-close").addEventListener("click",function(){a.closeHandler.call(a)}),window.addEventListener("keydown",
function(b){27===b.keyCode&&a.closeHandler.call(a)},!1)):window.attachEvent&&(this.container().attachEvent("onclick",function(b){b.target===a.container()&&a.closeHandler.call(a)},!1),this.container().querySelector(".yad-lightbox-close").attachEvent("onclick",function(){a.closeHandler.call(a)}),window.attachEvent("onkeydown",function(b){27===b.keyCode&&a.closeHandler.call(a)},!1))},closeHandler:function(){this.hide()},container:function(){return this.containerDiv},exists:function(){return!!this.container()},
setContent:function(a){this.lightboxContent=a}};e.Helper=e.Helper||{};e.Helper.Ajax={JSONPCallbacks:{},timeouts:{},AJAX_TIMEOUT:1E3,ajax:function(a,b,c,d,f){return e.Helper.Ajax.jsonp(a,b,c,d,f)},xhr:function(a,b,c,d,e){var f=new XMLHttpRequest;f.onreadystatechange=function(){4>f.readyState||200===f.status&&4===f.readyState&&c.call(e,f)};f.open("GET",a,!0);try{f.send("")}catch(h){"function"===typeof d&&d(h)}},jsonp:function(a,b,c,d,f){var g=(new Date).getTime(),h,k={},l;b&&b.publisher_url_params&&
(h=b.publisher_url_params,delete b.publisher_url_params);b&&(a+=(-1<a.indexOf("?")?"&":"?")+e.Helper.Ajax.urlencode(b));if(h){for(l in h)if(h.hasOwnProperty(l))if("string"===typeof h[l]||"number"===typeof h[l]||"boolean"===typeof h[l])k[l]=h[l];else if("undefined"===typeof h[l]||null===h[l])k[l]=null;a+=(-1<a.indexOf("?")?"&":"?")+"publisher_url_params="+encodeURIComponent(JSON.stringify(k))}a=a+(-1<a.indexOf("?")?"&":"?")+"callback="+("YADJSONPCallbacks.receiveCallback_"+g);e.Helper.Ajax.JSONPCallbacks["receiveCallback_"+
g]=function(a){window.clearTimeout(e.Helper.Ajax.timeouts[g]);a&&a.error&&d?d.call(f,a):a&&a.error?console.error("JSONP called returned an error, but there was no handler provided."):c&&c.call(f,a);delete e.Helper.Ajax.JSONPCallbacks["receiveCallback_"+g]};b=setTimeout(function(){e.Helper.Ajax.JSONPCallbacks["receiveCallback_"+g]=function(){delete e.Helper.Ajax.JSONPCallbacks["receiveCallback_"+g]};d&&d.call(f,{error:!0,isTimeout:!0})},e.Helper.Ajax.AJAX_TIMEOUT);e.Helper.Ajax.timeouts[g]=b;e.Helper.Ajax.addScript(a)},
createElement:function(a){return f.createElement(a)},addScript:function(a,b,c){var d=e.Helper.Ajax.createElement("script"),m=f.getElementsByTagName("head")[0],g=!1;d.type="text/javascript";d.src=a;b&&(d.onload=d.onreadystatechange=function(){g||this.readyState&&"loaded"!==this.readyState&&"complete"!==this.readyState||(g=!0,d.onload=d.onreadystatechange=null,b.call(c))});m.insertBefore(d,m.firstChild)},urlencode:function(a,b){var c=[],d,f,g;for(d in a)if(a.hasOwnProperty(d))switch(f=b&&a instanceof
Array?b+"[]":b?b+"["+d+"]":d,g=a[d],typeof g){case "object":g instanceof Array&&!(0<g.length)||c.push(e.Helper.Ajax.urlencode(g,f));break;default:c.push(encodeURIComponent(f)+"="+encodeURIComponent(g))}return c.join("&")},generateRequestID:function(){return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(a){var b=16*Math.random()|0;return("x"===a?b:b&3|8).toString(16)})}};window.YADJSONPCallbacks=window.YADJSONPCallbacks||e.Helper.Ajax.JSONPCallbacks;e.Bootstrap.IFRAME_DOMAIN="https://s.yimg.com";
e.Bootstrap.LOG_PATH="//syndication.streamads.yahoo.com/na_stream_brewer/error/v1";e.Bootstrap.IFRAME_URL=e.Bootstrap.IFRAME_DOMAIN+"/uq/syndication/yad-iframe.eca118e.html";e.Lightbox.ABOUT_IFRAME_URL=e.Bootstrap.IFRAME_DOMAIN+"/uq/syndication/yad-about.html";if("undefined"===typeof window.yad||!window.yad.initialized){var s="undefined"!==typeof window.yad&&"undefined"!==typeof window.yad.q?window.yad.q:[],q=[],p={},t=e.Helper.Ajax.generateRequestID();window.yad=function(a,b,c){b=b||{};
var d=b.debug&&window.console&&window.console.error,m=null;try{"undefined"===typeof p[a]&&(p[a]=0);b.element||(b.element=f.querySelectorAll(".YAD-"+a)[p[a]]);b.element||(b.element=f.querySelectorAll(".YAD")[q.length]);if(!b.element)throw new e.Error("Element with index #"+q.length+" not found");b.id=window.yad.i;b.pageviewID=t;m=new e.Bootstrap(a,b,c);q.push(m);p[a]+=1;window.yad.i++}catch(g){m&&m.hide();try{e.Helper.Ajax.ajax(e.Bootstrap.LOG_PATH,{exception:g.message,type:"Bootstrap",cid:a,pvid:t,
url:window.location&&window.location.href})}catch(h){d&&window.console.error("YAD: Unable to send following message to log due to "+h.message)}if(d)if(g instanceof e.Error)window.console.error("YAD: "+g.message);else throw g;}};window.yad.initialized=!0;window.yad.i=1;for(var m;s&&(m=s.shift());)"string"===typeof m[0]?window.yad(m[0],m[1]):(m[0]instanceof Array||m[0]instanceof Object)&&window.yad(m[0][0],m[0][1],m[1])}e.VERSION="eca118e"})();
