<#include "../templates/mainTemplate.ftl">
<@mainTemplate title="Поиск" styles=["css/fonts.min.css","css/header.min.css", "css/catalog.min.css","libs/magnific-popup/magnific-popup.css","css/jquery-ui.min.css","css/secondaryfooter.min.css"]
scripts=["libs/checkbox/checkbox.js","libs/autoNumeric/autoNumeric-min.js","libs/magnific-popup/jquery.magnific-popup.min.js","js/jquery-ui.min.js" ,"js/common-catalog.js","js/some.js","js/ajax-catalog.js"  ] />
<#-- @ftlvariable name="car" type="ru.kpfu.itis.api.domain.Car" -->


<#macro m_body>
<section>
    <div class="container">
        <div class="row">
            <h5>
                Сортировать по : <a href="#">цене</a> <a href="#">популярности</a> <a href="#">рейтингу</a>
            </h5>
        </div>
        <div class="row">
            <div class="col-lg-9">
                <#if cars??>
                    <div id="extradition">
                        <#list cars as car>
                            <#include "catalogCarItem.ftl">
                            <@catalogCar car=car ratingMap=ratingMap/>
                        </#list>
                    </div>
                    <#else >
                        <h2>Мы не знаем таких машин!</h2>
                </#if>

            </div>
            <div class="col-lg-3">

                ​<#include "filters.ftl"/>
                <@accordion filter=filter/>

            </div>
        </div>
    </div>
</section>

</#macro>