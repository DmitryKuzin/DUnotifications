<#macro topmnu compareCount>
<div class="top-mnu-myroom <@security.authorize access="isAuthenticated()">authenticated</@security.authorize>">

    <div class="Authenticated">
        <div><a class="username">Вы вошли как: <span>
        <@security.authorize access="isAuthenticated()">
                                        <@security.authentication property="principal.username" />
                                    </@security.authorize>
                                    </span></a></div>
        <hr>
        <div><a href="/favourites">Избранное</a></div>
        <div><a href="/compare">Сравнение</a><span class="compar-hdr">${compareCount}</span></div>
        <hr>
        <div><a href="/logout">Выйти</a></div>
    </div>

    <div class="notAuthenticated">
        <div><a href="/favourites">Избранное</a></div>
        <div><a href="/compare">Сравнение</a><span class="compar-hdr">${compareCount}</span></div>
        <div><a href="#login" class="login-popup">Войти в личный кабинет</a></div>
        <div><a href="#registration" class="registration-popup">Зарегистрироваться</a></div>
    </div>

</div>
</#macro>