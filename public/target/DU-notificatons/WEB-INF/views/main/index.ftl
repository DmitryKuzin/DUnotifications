<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
<!DOCTYPE html>
<html class="no-js" lang="ru">

<head>

    <meta charset="utf-8">

    <title>Сервис по подбору автомобилей и мототехники - Best-Car</title>
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
    <script>loadCSS( "/resources/css/header.min.css?ver=1.0.0", false, "all" );</script>
    <script>loadCSS( "/resources/libs/magnific-popup/magnific-popup.css?ver=1.0.0", false, "all" );</script>
    <script>loadCSS( "/resources/css/main.min.css?ver=1.0.0", false, "all" );</script>
    <!-- Load CSS End -->

    <!-- Load CSS Compiled without JS -->
    <noscript>
        <link rel="stylesheet" href="/resources/css/fonts.min.css">
        <link rel="stylesheet" href="/resources/libs/magnific-popup/magnific-popup.css">
        <link rel="stylesheet" href="/resources/css/main.min.css">
    </noscript>

</head>

<body>

<!-- Здесь пишем код -->

<header class="head">
    <div class="container">
        <div class="top-mnu">
            <div class="row">
                <div class="col-lg-5 col-lg-offset-5 top-mnu-sectns">
                    <ul>
                        <li><a href="#" class="active">Автомобили</a></li>
                        <li><a href="#">Мототехника</a></li>
                        <li class="has-sub"><a href="#" class="toggle-mnu">Личный кабинет</a>
                            <#include "../security_pages/topmnu.ftl"/>
                            <@topmnu compareCount=compareCount/>
                        </li>

                    </ul>
                </div>
                <div class="col-lg-2">
                    <a href="/" class="logolnk">
                        <img src="/resources/img/logo.svg" class="logolnk-img">
                    </a>
                </div>
            </div>
        </div>
        <div class="srch">
            <div class="row">
                <div class="col-lg-4 col-lg-offset-1">
                    <form action="/main-filter" method="post" class="srch-box">
                        <h4 class="srch-box-pricehdr">Цена, руб.</h4>
                        <div class="srch-box-price">
                            <span>от</span>
                            <input name="money_from" class="_money" type="text">
                            <span>до</span>
                            <input name="money_to" class="_money" type="text">
                        </div>
                        <hr>
                        <h4>Состояние</h4>
                        <div class="srch-box-condi">
                            <label for="checkbox0" class="srch-box-chboxlabel">
                                <input name="new" id="checkbox0" type="checkbox" value="новая">
                            </label>
                            <span>новая</span>
                            <label for="checkbox1" class="srch-box-chboxlabel">
                                <input name="used" id="checkbox1" type="checkbox" value="б.у">
                            </label>
                            <span>б.у</span>
                        </div>
                        <hr>
                        <h4>Производитель</h4>
                        <div class="srch-box-vendr">
                            <table>
                                <tr>
                                    <td>
                                        <label for="checkbox2" class="srch-box-chboxlabel">
                                            <input name="_Audi" id="checkbox2" type="checkbox" value="_Audi">
                                        </label>
                                        <span>Audi</span>
                                    </td>
                                    <td>
                                        <label for="checkbox3" class="srch-box-chboxlabel">
                                            <input name="_Fiat" id="checkbox3" type="checkbox" value="_Fiat">
                                        </label>
                                        <span>Fiat</span>
                                    </td>
                                    <td>
                                        <label for="checkbox4" class="srch-box-chboxlabel">
                                            <input name="_Kia" id="checkbox4" type="checkbox" value="_Kia">
                                        </label>
                                        <span>Kia</span>
                                    </td>
                                    <td>
                                        <label for="checkbox5" class="srch-box-chboxlabel">
                                            <input name="_Peugeot" id="checkbox5" type="checkbox" value="_Peugeot">
                                        </label>
                                        <span>Peugeot</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="checkbox2" class="srch-box-chboxlabel">
                                            <input name="_BMW" id="checkbox2" type="checkbox" value="_BMW">
                                        </label>
                                        <span>BMW</span>
                                    </td>
                                    <td>
                                        <label for="checkbox3" class="srch-box-chboxlabel">
                                            <input name="_Ford" id="checkbox3" type="checkbox" value="_Ford">
                                        </label>
                                        <span>Ford</span>
                                    </td>
                                    <td>
                                        <label for="checkbox4" class="srch-box-chboxlabel">
                                            <input name="_Lada" id="checkbox4" type="checkbox" value="_Lada">
                                        </label>
                                        <span>Lada</span>
                                    </td>
                                    <td>
                                        <label for="checkbox5" class="srch-box-chboxlabel">
                                            <input name="_Skoda" id="checkbox5" type="checkbox" value="_Skoda">
                                        </label>
                                        <span>Skoda</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="checkbox2" class="srch-box-chboxlabel">
                                            <input name="_Chevrolet" id="checkbox2" type="checkbox" value="_Chevrolet">
                                        </label>
                                        <span>Chevrolet</span>
                                    </td>
                                    <td>
                                        <label for="checkbox3" class="srch-box-chboxlabel">
                                            <input name="_Honda" id="checkbox3" type="checkbox" value="_Honda">
                                        </label>
                                        <span>Honda</span>
                                    </td>
                                    <td>
                                        <label for="checkbox4" class="srch-box-chboxlabel">
                                            <input name="_Mercedes" id="checkbox4" type="checkbox" value="_Mercedes">
                                        </label>
                                        <span>Mercedes</span>
                                    </td>
                                    <td>
                                        <label for="checkbox5" class="srch-box-chboxlabel">
                                            <input name="_Toyota" id="checkbox5" type="checkbox" value="_Toyota">
                                        </label>
                                        <span>Toyota</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="checkbox2" class="srch-box-chboxlabel">
                                            <input name="_Citroen" id="checkbox2" type="checkbox" value="_Citroen">
                                        </label>
                                        <span>Citroen</span>
                                    </td>
                                    <td>
                                        <label for="checkbox3" class="srch-box-chboxlabel">
                                            <input name="_Hyundai" id="checkbox3" type="checkbox" value="_Hyundai">
                                        </label>
                                        <span>Hyundai</span>
                                    </td>
                                    <td>
                                        <label for="checkbox4" class="srch-box-chboxlabel">
                                            <input name="_Nissan" id="checkbox4" type="checkbox" value="_Nissan">
                                        </label>
                                        <span>Nissan</span>
                                    </td>
                                    <td>
                                        <label for="checkbox5" class="srch-box-chboxlabel">
                                            <input name="_Volkswagen" id="checkbox5" type="checkbox" value="_Volkswagen">
                                        </label>
                                        <span>Volkswagen</span>
                                    </td>
                                </tr>
                            </table>
                            <div class="srch-box-vendr-loadmore">
                                <a class="srch-box-vendr-loadmore-lnk"><span class="double-chevron"></span><span class="showall">Показать всех производителей</span></a>
                            </div>

                            <div class="srch-box-vendr-exp">
                                <table>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input name="_Porsche" id="checkbox2" type="checkbox" value="_Porsche">
                                            </label>
                                            <span>Porsche</span>
                                        </td>

                                    </tr>
                                </table>
                            </div>


                        </div>
                        <hr>
                        <h4>Коробка передач</h4>
                        <div class="srch-box-transm">
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input name="Ручная" id="checkbox5" type="checkbox" value="Ручная">
                            </label>
                            <span>Ручная</span>
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input name="Автомат" id="checkbox5" type="checkbox" value="Автомат">
                            </label>
                            <span>Автомат</span>
                        </div>
                        <hr>



                        <div class="srch-box-butn">
                            <button class="butn">Применить</button>
                        </div>
                        <div class="srch-box-allfiltrs">
                            <a href="/all-filters">Перейти ко всем фильтрам</a>
                        </div>

                    </form>
                </div>
            </div>
        </div>
        <div class="navi">
            <a href="#content"><img src="/resources/img/noun_54414_cc.png" height="700" width="700" alt=""></a>
        </div>
    </div>
</header>
<span id="content"></span>
<section class="sect-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <h3 >Популярные автомобили</h3>
            </div>
        </div>
        <div class="row sect-1-cars">
            <div class="owl-carousel">

            <#include "carItem.ftl">
            <#list popCars as car>
                <@carItem car=car avgRating=ratingMap />
            </#list>

            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <h3>Новинки</h3>
            </div>
        </div>
        <div class="row sect-1-cars">
            <div class="owl-carousel">

                    <#include "carItem.ftl">
                    <#list newCars as car>
                            <@carItem car=car avgRating=ratingMap />
                    </#list>

            </div>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="top-mnu onfooter">
            <div class="row">
                <div class="col-lg-2">
                    <a href="/" class="logolnk">
                        <img src="/resources/img/logo.svg" class="logolnk-img">
                    </a>
                </div>
                <div class="col-lg-5 top-mnu-sectns">
                    <ul>
                        <li><a href="#">Подобрать авто</a></li>
                        <li><a href="#">Мототехника</a></li>
                        <li><a href="#" class="active">Автомобили</a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
</footer>

<div class="hidden">
    <#include "../security_pages/login.ftl"/>
    <#include "../registration/reg-form.ftl"/>
</div>

<!--[if lt IE 9]>
<script src="/resources/libs/html5shiv/es5-shim.min.js"></script>
<script src="/resources/libs/html5shiv/html5shiv.min.js"></script>
<script src="/resources/libs/html5shiv/html5shiv-printshiv.min.js"></script>
<script src="/resources/libs/respond/respond.min.js"></script>
<script src="/resources/libs/checkbox/checkbox.js"></script>
<script src="/resources/libs/autoNumeric/autoNumeric-min.js"></script>
<script src="/resources/libs/owl.carousel.2.0.0-beta.2.4/owl.carousel.min.js"></script>
<script src="/resources/js/common.js"></script>
<script src="/resources/js/common-main.js"></script>
<![endif]-->

<!-- Load Scripts Start -->
<script>var scr = {"scripts":[
    {"src" : "/resources/js/libs.js", "async" : false},
    {"src" : "/resources/libs/checkbox/checkbox.js", "async" : false},
    {"src" : "/resources/libs/magnific-popup/jquery.magnific-popup.min.js", "async" : false},
    {"src" : "/resources/libs/autoNumeric/autoNumeric-min.js", "async" : false},
    {"src" : "/resources/libs/owl.carousel.2.0.0-beta.2.4/owl.carousel.min.js", "async" : false},
    {"src" : "/resources/js/common.js", "async" : false},
    {"src" : "/resources/js/common-main.js", "async" : false}
]};!function(t,n,r){"use strict";var c=function(t){if("[object Array]"!==Object.prototype.toString.call(t))return!1;for(var r=0;r<t.length;r++){var c=n.createElement("script"),e=t[r];c.src=e.src,c.async=e.async,n.body.appendChild(c)}return!0};t.addEventListener?t.addEventListener("load",function(){c(r.scripts);},!1):t.attachEvent?t.attachEvent("onload",function(){c(r.scripts)}):t.onload=function(){c(r.scripts)}}(window,document,scr);
</script>
<!-- Load Scripts End -->

</body>
</html>
