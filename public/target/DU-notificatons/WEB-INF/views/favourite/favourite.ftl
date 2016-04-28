<#include "../templates/clearBodyTemplate.ftl">
<@clearBodyTemplate title="Избранное" styles=[
"css/fonts.min.css",
"css/header.min.css",
"css/catalog.min.css",
"css/favourite.min.css",
"libs/magnific-popup/magnific-popup.css",
"css/secondaryfooter.min.css"
]
scripts=[
"js/libs.js",
"libs/checkbox/checkbox.js",
"libs/autoNumeric/autoNumeric-min.js",
"libs/magnific-popup/jquery.magnific-popup.min.js",
"js/common-favourite.js"
] />

<#macro m_body>
<div class="wrap">
    <#include "../templates/header.ftl">
    <section id="main" class="clearfix">
        <div class="container">
            <div class="row">

                <div class="col-lg-9 col-lg-offset-1">
                    <h3>Избранное</h3>
                    <#if emptyFav??>
                        <h4>Пусто.</h4>
                    <#else >

                        <#list favourites as fav>
                            <#include "car.ftl"/>
                            <@carItem favourite=fav/>
                        </#list>

                    </#if>


                </div>
            </div>
        </div>
    </section>
</div>
<footer id="ihopenoonewontseeit">
    <div class="container">
        <div class="top-mnu onfooter">
            <div class="row">
                <div class="col-lg-2 footr-logo">
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
</#macro>