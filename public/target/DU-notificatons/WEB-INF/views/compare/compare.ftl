<#include "../templates/mainTemplate.ftl">
<@mainTemplate title="Сравнение" styles=[
"css/fonts.min.css",
"css/header.min.css",
"css/compare.min.css",
"libs/magnific-popup/magnific-popup.css",
"css/secondaryfooter.min.css"
]
scripts=[
"js/libs.js",
"libs/checkbox/checkbox.js",
"libs/autoNumeric/autoNumeric-min.js",
"libs/tablesorter/jquery.stickytableheaders.min.js",
"libs/magnific-popup/jquery.magnific-popup.min.js",
"js/common-compare.js"
] />
<#-- @ftlvariable name="com" type="ru.kpfu.itis.api.domain.Compare" -->
<#-- @ftlvariable name="compare" type="java.util.List<ru.kpfu.itis.api.domain.Compare>" -->
<#macro m_body>
<section>
    <div class="container">

        <#if emptyCompare??>
            <h4>Пусто.</h4>
        <#else >
            <div class="row">
                <a id="all-param" class="back back-active">Все параметры</a><a id="diff-param" class="back">Различающиеся</a>
                <table id="myTable" class="comparison">
                    <thead>
                    <th>
                    </th>
                        <#list compare as com>
                        <th>
                            <div class="item" id="${com.car.id}">
                                <img class="js_img" src="${com.car.getCatalogImageUrl()}" alt="">
                                <div class="item-name"><a href="/item?id=${com.car.id}">${com.car.brand} ${com.car.model} ${com.car.generation}</a></div>
                            </div>
                        </th>
                        </#list>
                    </thead>
                    <tbody id="table-body">
                    <tr>
                        <td>Цена</td>
                        <#list compare as com>
                            <td><div class="_price">${com.car.minimalPrice}</div></td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Тип кузова</td>
                        <#list compare as com>
                            <td>${com.car.bodyType}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Тип двигателя</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].engineType}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Мощность л.с</td>
                        <#list compare as com>
                            <td${equipmentMap[com.car.id?string].enginePower}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Разгон до 100 км/ч</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].acceleration}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Расход в смешанном цикле(л\100км)</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].fuelConsumption}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Клиренс</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].clearance}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Коробка передач</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].transmission}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Привод</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].driveUnit}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Подушки безопасности</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].airBag}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Баллы по euroncap</td>
                        <#list compare as com>
                            <td>низнаю</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>ABS</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].abs?string('есть','нет')}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>ESP</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].esp?string('есть','нет')}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Traction Control</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].tractionControl?string('есть','нет')}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Фары</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].headlights}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Число мест</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].numberOfSeats}</td>

                        </#list>
                    </tr>

                    <tr>
                        <td>Обшивка салона</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].leatherSeats}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Обшивка потолка</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].ceiling}</td>
                        </#list>
                    </tr>

                    <tr>
                        <td>Кондиционер</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].airConditioning}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Аудио-подкотовка</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].audioSystem}</td>
                        </#list>
                    </tr>

                    <tr>
                        <td>Усилитель руля</td>
                        <#list compare as com>
                            <td>>${equipmentMap[com.car.id?string].powerSteering}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Датчик дождя</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].rainSensor?string('есть','нет')}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Электронный щиток приборов</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].electricSpeedometer}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Проекция на лобовое стекло</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].projector}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Подогрев зеркал</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].heatedMirrors?string('есть','нет')}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Круиз-контроль</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].cruiseControl?string('есть','нет')}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Люк</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].sunroof}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Старт-Стоп</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].startStop?string('есть','нет')}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Обьем топливного бака</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].fuelTank}</td>

                        </#list>
                    </tr>
                    <tr>
                        <td>Зеркала в цвет кузова</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].bodyColorMirrors?string('есть','нет')}</td>
                        </#list>
                    </tr>
                    <tr>
                        <td>Собственный вес</td>
                        <#list compare as com>
                            <td>${equipmentMap[com.car.id?string].ownWeight}</td>
                        </#list>
                    </tr>


                    </tbody>

                </table>
            </div>

        </#if>


    </div>
</section>
</#macro>