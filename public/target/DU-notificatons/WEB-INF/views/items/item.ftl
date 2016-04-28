<#include "../templates/mainTemplate.ftl">
<#-- @ftlvariable name="car" type="ru.kpfu.itis.api.domain.Car" -->
<#-- @ftlvariable name="review" type="ru.kpfu.itis.api.domain.Review" -->
<@mainTemplate title="${car.brand} ${car.model} ${car.generation}" styles=[
"css/fonts.min.css",
"css/header.min.css",
"css/itemcard.min.css",
"libs/magnific-popup/magnific-popup.css",
"css/secondaryfooter.min.css"
]
scripts=[
"js/libs.js",
"libs/owl.carousel.2.0.0-beta.2.4/owl.carousel.min.js",
"libs/magnific-popup/jquery.magnific-popup.min.js",
"libs/zoomsl/zoomsl-3.0.min.js",
"js/common-item.js"] />

<#macro m_body>
<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-12"><h2><a href="javascript:history.back()" class="back"><i class="fa fa-angle-left"></i></a>${car.brand} ${car.model} ${car.generation} <#include "../main/rating.ftl"/>
                <@rating rating=stars/></h2><hr></div>
            <div class="col-lg-7">
                <div id="gallery" class="image-wrapper">
                    <img src="${car.indexImageUrl}" alt="" id="main-img" />
                    <ul>
                        <#list car.imagesURL as image>
                            <li><img src="${image.getImageURL()}" alt="" /></li>
                        </#list>
                    </ul>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="row">
                    <div class="col-lg-12">
                        <table class="prices">
                            <tr>
                                <th>
                                    <div class="compare"><a id="${car.id}" title="Сравнить"><i class="fa fa-align-left"></i></a></div>
                                    <div class="favourite"><a id="${car.id}" title="В избранное"><i class="fa fa-star-o"></i></a></div>

                                    Комплектация</th>
                                <th>|</th>
                                <th>Цены</th>
                            </tr>
                            <#list car.equipments as equipment>
                                <tr>
                                    <td>${equipment.name}</td>
                                    <td>|</td>
                                    <td><div class="_price-from"> ${equipment.price} ₽</div></td>
                                </tr>
                            </#list>

                        </table>
                    </div>
                    <!-- <div class="col-lg-12">
                        <div class="params">
                        <p>Базовая комплектация</p>
                        <ul>
                            <li>Lorem ipsum dolor sit amet, consectetur.</li>
                            <li>Lorem ipsum dolor sit amet, consectetur.</li>
                            <li>Lorem ipsum dolor sit amet, consectetur.</li>
                            <li>Lorem ipsum dolor sit amet, consectetur.</li>
                            <li>Lorem ipsum dolor sit amet, consectetur.</li>
                        </ul>
                        </div>
                    </div> -->
                </div>
            </div>
            <div class="col-lg-12">
                <div class="equip">
                    <table>
                        <tr class="equip-hdr">
                            <th>Комплектация</th>
                            <th class="equip-hdr-price">Цена</th>
                            <th class="equip-hdr-engine">Двигатель</th>
                            <th class="equip-hdr-fastness">Разгон до 100 км/ч</th>
                            <th class="equip-hdr-petrol">Расход смешанный</th>
                            <th>Коробка</th>
                            <th>Привод</th>
                        </tr>
                        <#list car.equipments as equipment>
                            <td>${equipment.name}</td>
                            <td>${equipment.price}</td>
                            <td>${equipment.engineType} (${equipment.enginePower})</td>
                            <td>${equipment.acceleration}</td>
                            <td>${equipment.fuelConsumption}</td>
                            <td>${equipment.transmission}</td>
                            <td>${equipment.driveUnit}</td>
                            </tr>
                        </#list>

                    </table>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="reviews">
                    <h2>Отзывы</h2>
                    <hr>
                    <div class="row">
                        <div class="col-lg-9 all-reviews">

                            <#include "review.ftl">
                            <#list revs as rev>

                                <@review rev=rev/>

                            </#list>
                            <div class="reviews-showmore">
                                <h3>Показать еще</h3>
                            </div>
                            <div class="from-review" style="display:none;">${from}</div>
                        </div>
                        <div class="col-lg-3">
                            <div class="reviews-create">
                                <form action="/create-review?id=${car.id}" method="post">
                                    <button class="butn" type="submit">Написать отзыв</button>
                                </form>
                            </div>
                            <h4 class="hasinfo">Cтоимость эксплуатацции <i class="fa fa-info-circle infotoggle"></i>
                                <div class="infotoggle-text">
                                    Lorem ipsum dolor sit amet.
                                </div>
                                <h4>
                                    <div class="reviews-useropin">
                                        много
                                    </div>
                                    <h4>Недостатки<h4>
                                        <div class="reviews-useropin">
                                            <ul>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                            </ul>
                                        </div>
                                        <h4>Гарантия завода</h4>
                                        <div class="reviews-useropin">
                                            <ul>
                                                <li>10 лет на кузов</li>
                                                <li>5 лет на двигатель</li>
                                                <li>3 года на подвеску</li>

                                            </ul>
                                        </div>
                                        <h4>Средний ресурс узлов</h4>
                                        <div class="reviews-useropin">
                                            <ul>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                                <li>Lorem ipsum dolor sit amet.</li>
                                            </ul>
                                        </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 offers-wrapper">
                            <div class="offers">
                                <h2>Вам также могут понравиться</h2>
                                <hr>
                            </div>
                            <div class="sect-1-cars">
                                <div class="owl-carousel">

                                    <div class="slide">

                                        <div class="sect-1-cars-item">
                                            <img src="/resources/img/bmw-m3-sedan.jpg" alt="BMW M3 sedan">
                                            <h4><a href="">BWM M3 F80</a><div class="rating"><span></span><span></span><span></span><span></span><span></span></div></h4>
                                            <ul>
                                                <li><span></span>Привод : <div class="_transmission">Задний</div></li>
                                                <li><span></span>КПП : <div class="_gearbox">Робот</div></li>
                                            </ul>
                                            <h5>цена : <div class="_price">3 950 000 <span>&#8381;</span></div></h5>
                                        </div>


                                    </div>

                                    <div class="slide">

                                        <div class="sect-1-cars-item">
                                            <img src="/resources/img/bmw-m3-sedan.jpg" alt="BMW M3 sedan">
                                            <h4><a href="">BWM M3 F80</a><div class="rating"><span></span><span></span><span></span><span></span><span></span></div></h4>
                                            <ul>
                                                <li><span></span>Привод : <div class="_transmission">Задний</div></li>
                                                <li><span></span>КПП : <div class="_gearbox">Робот</div></li>
                                            </ul>
                                            <h5>цена : <div class="_price">3 950 000 <span>&#8381;</span></div></h5>
                                        </div>


                                    </div>

                                    <div class="slide">

                                        <div class="sect-1-cars-item">
                                            <img src="/resources/img/bmw-m3-sedan.jpg" alt="BMW M3 sedan">
                                            <h4><a href="">BWM M3 F80</a><div class="rating"><span></span><span></span><span></span><span></span><span></span></div></h4>
                                            <ul>
                                                <li><span></span>Привод : <div class="_transmission">Задний</div></li>
                                                <li><span></span>КПП : <div class="_gearbox">Робот</div></li>
                                            </ul>
                                            <h5>цена : <div class="_price">3 950 000 <span>&#8381;</span></div></h5>
                                        </div>


                                    </div>

                                    <div class="slide">

                                        <div class="sect-1-cars-item">
                                            <img src="/resources/img/bmw-m3-sedan.jpg" alt="BMW M3 sedan">
                                            <h4><a href="">BWM M3 F80</a><div class="rating"><span></span><span></span><span></span><span></span><span></span></div></h4>
                                            <ul>
                                                <li><span></span>Привод : <div class="_transmission">Задний</div></li>
                                                <li><span></span>КПП : <div class="_gearbox">Робот</div></li>
                                            </ul>
                                            <h5>цена : <div class="_price">3 950 000 <span>&#8381;</span></div></h5>
                                        </div>


                                    </div>

                                    <div class="slide">

                                        <div class="sect-1-cars-item">
                                            <img src="/resources/img/bmw-m3-sedan.jpg" alt="BMW M3 sedan">
                                            <h4><a href="">BWM M3 F80</a><div class="rating"><span></span><span></span><span></span><span></span><span></span></div></h4>
                                            <ul>
                                                <li><span></span>Привод : <div class="_transmission">Задний</div></li>
                                                <li><span></span>КПП : <div class="_gearbox">Робот</div></li>
                                            </ul>
                                            <h5>цена : <div class="_price">3 950 000 <span>&#8381;</span></div></h5>
                                        </div>


                                    </div>

                                    <div class="slide">

                                        <div class="sect-1-cars-item">
                                            <img src="/resources/img/bmw-m3-sedan.jpg" alt="BMW M3 sedan">
                                            <h4><a href="">BWM M3 F80</a><div class="rating"><span></span><span></span><span></span><span></span><span></span></div></h4>
                                            <ul>
                                                <li><span></span>Привод : <div class="_transmission">Задний</div></li>
                                                <li><span></span>КПП : <div class="_gearbox">Робот</div></li>
                                            </ul>
                                            <h5>цена : <div class="_price">3 950 000 <span>&#8381;</span></div></h5>
                                        </div>


                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</#macro>