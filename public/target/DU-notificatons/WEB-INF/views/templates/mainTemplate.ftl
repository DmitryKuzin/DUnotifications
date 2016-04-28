<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
<#macro mainTemplate title="Car selection service | Best-Car" styles=[] scripts=[]>
<!DOCTYPE html>
<html class="no-js" lang="ru">

<head>

    <meta charset="utf-8">

    <title>${title}</title>
    <meta name="description" content="">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <meta property="og:image" content="path/to/image.jpg">

    <link rel="shortcut icon" href="/resources/img/favicon/apple-touch-icon.png">
    <!-- Bootstrap v3.3.4 Grid Styles -->
    <link rel="stylesheet" href="/resources/css/bootstraplite.css" type="text/css" />

    <!-- Header CSS (First Sections of Website: paste after release from header.min.css here) -->
    <style></style>

    <!-- Load CSS, CSS Localstorage & WebFonts Main Function -->
    <script>!function(e){"use strict";function t(e,t,n){e.addEventListener?e.addEventListener(t,n,!1):e.attachEvent&&e.attachEvent("on"+t,n)}function n(t,n){return e.localStorage&&localStorage[t+"_content"]&&localStorage[t+"_file"]===n}function a(t,a){if(e.localStorage&&e.XMLHttpRequest)n(t,a)?o(localStorage[t+"_content"]):l(t,a);else{var s=r.createElement("link");s.href=a,s.id=t,s.rel="stylesheet",s.type="text/css",r.getElementsByTagName("head")[0].appendChild(s),r.cookie=t}}function l(e,t){var n=new XMLHttpRequest;n.open("GET",t,!0),n.onreadystatechange=function(){4===n.readyState&&200===n.status&&(o(n.responseText),localStorage[e+"_content"]=n.responseText,localStorage[e+"_file"]=t)},n.send()}function o(e){var t=r.createElement("style");t.setAttribute("type","text/css"),r.getElementsByTagName("head")[0].appendChild(t),t.styleSheet?t.styleSheet.cssText=e:t.innerHTML=e}var r=e.document;e.loadCSS=function(e,t,n){var a,l=r.createElement("link");if(t)a=t;else{var o;o=r.querySelectorAll?r.querySelectorAll("style,link[rel=stylesheet],script"):(r.body||r.getElementsByTagName("head")[0]).childNodes,a=o[o.length-1]}var s=r.styleSheets;l.rel="stylesheet",l.href=e,l.media="only x",a.parentNode.insertBefore(l,t?a:a.nextSibling);var c=function(e){for(var t=l.href,n=s.length;n--;)if(s[n].href===t)return e();setTimeout(function(){c(e)})};return l.onloadcssdefined=c,c(function(){l.media=n||"all"}),l},e.loadLocalStorageCSS=function(l,o){n(l,o)||r.cookie.indexOf(l)>-1?a(l,o):t(e,"load",function(){a(l,o)})}}(this);</script>

    <!-- Load CSS Start -->
    <script>loadLocalStorageCSS( "webfonts", "/resources/css/fonts.min.css?ver=1.0.0" );</script>
    <#list styles as css>
        <script>loadCSS( "/resources/${css}", false, "all" );</script>
    </#list>
    <!-- Load CSS End -->

    <!-- Load CSS Compiled without JS -->
    <noscript>
        <#list styles as css>
            <link rel="stylesheet" href="/resources/${css}" type="text/css" />
        </#list>
    </noscript>

</head>

<body>

    <#include "header.ftl" />
    <@m_body />
    <#include "footer.ftl" />

<div class="hidden">
    <#include "../security_pages/login.ftl"/>
    <#include "../registration/reg-form.ftl"/>
</div>

<!--[if lt IE 9]>
<script src="/resources/libs/html5shiv/es5-shim.min.js"></script>
<script src="/resources/libs/html5shiv/html5shiv.min.js"></script>
<script src="/resources/libs/html5shiv/html5shiv-printshiv.min.js"></script>
<script src="/resources/libs/respond/respond.min.js"></script>
<![endif]-->

<!-- Load Scripts Start -->
<script>var scr = {"scripts":[
    {"src" : "/resources/js/libs.js", "async" : false},
    <#list scripts as js>
    {"src" : "/resources/${js}", "async" : false},
    </#list>
    {"src" : "/resources/js/common.js", "async" : false}
]};!function(t,n,r){"use strict";var c=function(t){if("[object Array]"!==Object.prototype.toString.call(t))return!1;for(var r=0;r<t.length;r++){var c=n.createElement("script"),e=t[r];c.src=e.src,c.async=e.async,n.body.appendChild(c)}return!0};t.addEventListener?t.addEventListener("load",function(){c(r.scripts);},!1):t.attachEvent?t.attachEvent("onload",function(){c(r.scripts)}):t.onload=function(){c(r.scripts)}}(window,document,scr);
</script>
<!-- Load Scripts End -->

</body>
</html>
</#macro>