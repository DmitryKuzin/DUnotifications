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
    </div>
</header>