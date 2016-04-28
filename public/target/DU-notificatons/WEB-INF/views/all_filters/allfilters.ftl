<#include "../templates/clearBodyTemplate.ftl">
<@clearBodyTemplate title="Поиск" styles=[
"css/fonts.min.css",
"css/header.min.css",
"libs/magnific-popup/magnific-popup.css",
"css/allfilters.min.css",
"css/secondaryfooter.min.css"
]
scripts=[
"js/libs.js",
"libs/checkbox/checkbox.js",
"libs/magnific-popup/jquery.magnific-popup.min.js",
"libs/autoNumeric/autoNumeric-min.js",
] />

<#macro m_body>
<header class="head">
    <div class="container">
        <div class="top-mnu">
            <div class="row">
                <div class="col-lg-5 col-lg-offset-5 top-mnu-sectns">
                    <ul>
                        <li><a href="#" class="active">Автомобили</a></li>
                        <li><a href="#">Мототехника</a></li>
                        <li class="has-sub"><a href="#" class="toggle-mnu">Личный кабинет</a>
                            <div class="top-mnu-myroom">
                                <div><a href="/favourites">Избранное</a></div>
                                <div><a href="/compare">Сравнение</a><span class="compar-hdr">5</span></div>
                                <div><a href="#login" class="login-popup">Войти в личный кабинет</a></div>
                                <div><a href="#registration" class="registration-popup">Зарегистрироваться</a></div>
                            </div>
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
            <div class="row background">
                <form action="#" class="srch-box">
                    <div class="col-lg-4 col-lg-offset-1">
                        <h4 class="srch-box-pricehdr">Цена, руб.</h4>
                        <div class="srch-box-price">
                            <span>от</span>
                            <input class="_money" type="text">
                            <span>до</span>
                            <input class="_money" type="text">
                        </div>
                        <hr>
                        <h4>Состояние</h4>
                        <div class="srch-box-condi">
                            <label for="checkbox0" class="srch-box-chboxlabel">
                                <input id="checkbox0" type="checkbox" value="новая">
                            </label>
                            <span>новая</span>
                            <label for="checkbox1" class="srch-box-chboxlabel">
                                <input id="checkbox1" type="checkbox" value="б.у">
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
                                            <input id="checkbox2" type="checkbox" value="Audi">
                                        </label>
                                        <span>Audi</span>
                                    </td>
                                    <td>
                                        <label for="checkbox3" class="srch-box-chboxlabel">
                                            <input id="checkbox3" type="checkbox" value="BWN">
                                        </label>
                                        <span>BMW</span>
                                    </td>
                                    <td>
                                        <label for="checkbox4" class="srch-box-chboxlabel">
                                            <input id="checkbox4" type="checkbox" value="Bentley">
                                        </label>
                                        <span>Bentley</span>
                                    </td>
                                    <td>
                                        <label for="checkbox5" class="srch-box-chboxlabel">
                                            <input id="checkbox5" type="checkbox" value="Citroen">
                                        </label>
                                        <span>Citroen</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="checkbox2" class="srch-box-chboxlabel">
                                            <input id="checkbox2" type="checkbox" value="Audi">
                                        </label>
                                        <span>Audi</span>
                                    </td>
                                    <td>
                                        <label for="checkbox3" class="srch-box-chboxlabel">
                                            <input id="checkbox3" type="checkbox" value="BWN">
                                        </label>
                                        <span>BMW</span>
                                    </td>
                                    <td>
                                        <label for="checkbox4" class="srch-box-chboxlabel">
                                            <input id="checkbox4" type="checkbox" value="Bentley">
                                        </label>
                                        <span>Bentley</span>
                                    </td>
                                    <td>
                                        <label for="checkbox5" class="srch-box-chboxlabel">
                                            <input id="checkbox5" type="checkbox" value="Citroen">
                                        </label>
                                        <span>Citroen</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="checkbox2" class="srch-box-chboxlabel">
                                            <input id="checkbox2" type="checkbox" value="Audi">
                                        </label>
                                        <span>Audi</span>
                                    </td>
                                    <td>
                                        <label for="checkbox3" class="srch-box-chboxlabel">
                                            <input id="checkbox3" type="checkbox" value="BWN">
                                        </label>
                                        <span>BMW</span>
                                    </td>
                                    <td>
                                        <label for="checkbox4" class="srch-box-chboxlabel">
                                            <input id="checkbox4" type="checkbox" value="Bentley">
                                        </label>
                                        <span>Bentley</span>
                                    </td>
                                    <td>
                                        <label for="checkbox5" class="srch-box-chboxlabel">
                                            <input id="checkbox5" type="checkbox" value="Citroen">
                                        </label>
                                        <span>Citroen</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label for="checkbox2" class="srch-box-chboxlabel">
                                            <input id="checkbox2" type="checkbox" value="Audi">
                                        </label>
                                        <span>Audi</span>
                                    </td>
                                    <td>
                                        <label for="checkbox3" class="srch-box-chboxlabel">
                                            <input id="checkbox3" type="checkbox" value="BWN">
                                        </label>
                                        <span>BMW</span>
                                    </td>
                                    <td>
                                        <label for="checkbox4" class="srch-box-chboxlabel">
                                            <input id="checkbox4" type="checkbox" value="Bentley">
                                        </label>
                                        <span>Bentley</span>
                                    </td>
                                    <td>
                                        <label for="checkbox5" class="srch-box-chboxlabel">
                                            <input id="checkbox5" type="checkbox" value="Citroen">
                                        </label>
                                        <span>Citroen</span>
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
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="checkbox2" class="srch-box-chboxlabel">
                                                <input id="checkbox2" type="checkbox" value="Audi">
                                            </label>
                                            <span>Audi</span>
                                        </td>
                                        <td>
                                            <label for="checkbox3" class="srch-box-chboxlabel">
                                                <input id="checkbox3" type="checkbox" value="BWN">
                                            </label>
                                            <span>BMW</span>
                                        </td>
                                        <td>
                                            <label for="checkbox4" class="srch-box-chboxlabel">
                                                <input id="checkbox4" type="checkbox" value="Bentley">
                                            </label>
                                            <span>Bentley</span>
                                        </td>
                                        <td>
                                            <label for="checkbox5" class="srch-box-chboxlabel">
                                                <input id="checkbox5" type="checkbox" value="Citroen">
                                            </label>
                                            <span>Citroen</span>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <hr>
                        <h4>Коробка передач</h4>
                        <div class="srch-box-transm">
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Ручная</span>
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Автомат</span>
                        </div>
                        <hr>
                        <!-- <h4>Привод</h4>
                        <div class="srch-box-drve">
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Передний</span>
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Полный</span>
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Задний</span>
                        </div> -->
                        <!-- 							<hr> -->
                        <div class="srch-box-butn">
                            <button class="butn">Применить</button>
                        </div>
                        <div class="srch-box-allfiltrs">
                        </div>


                    </div>
                    <div class="col-lg-4 col-lg-offset-1">

                        <h4 class="srch-box-pricehdr">Lorem</h4>
                        <div class="srch-box-condi">
                            <label for="checkbox0" class="srch-box-chboxlabel">
                                <input id="checkbox0" type="checkbox" value="новая">
                            </label>
                            <span>новая</span>
                            <label for="checkbox1" class="srch-box-chboxlabel">
                                <input id="checkbox1" type="checkbox" value="б.у">
                            </label>
                            <span>б.у</span>
                        </div>
                        <hr>
                        <h4>Состояние</h4>
                        <div class="srch-box-condi">
                            <label for="checkbox0" class="srch-box-chboxlabel">
                                <input id="checkbox0" type="checkbox" value="новая">
                            </label>
                            <span>новая</span>
                            <label for="checkbox1" class="srch-box-chboxlabel">
                                <input id="checkbox1" type="checkbox" value="б.у">
                            </label>
                            <span>б.у</span>
                        </div>
                        <hr>
                        <h4>Привод</h4>
                        <div class="srch-box-drve">
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Передний</span>
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Полный</span>
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Задний</span>
                        </div>
                        <hr>
                        <h4>Коробка передач</h4>
                        <div class="srch-box-transm">
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Ручная</span>
                            <label for="checkbox5" class="srch-box-chboxlabel">
                                <input id="checkbox5" type="checkbox" value="Citroen">
                            </label>
                            <span>Автомат</span>
                        </div>



                    </div>
                </form>
            </div>
        </div>
        <div class="navi">
            <a href="#content"><img src="/resources/img/noun_54414_cc.png" height="700" width="700" alt=""></a>
        </div>
    </div>
</header>
<section></section>
    <#include "../templates/footer.ftl" />
</#macro>