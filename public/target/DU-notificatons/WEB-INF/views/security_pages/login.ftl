<form action="j_spring_security_check" method="post" id="login" class="${loginMustOpen!''}">
    <h2>Добро пожаловать!</h2>
    <div class="inp-wr">
        <input name="j_username" class="js_in" type="text" placeholder="Имя пользователя" required="required">
        <div class="line"></div>
    </div>
    <div class="inp-wr">
        <input name="j_password" class="js_in2" type="password" placeholder="Пароль" required="required">
        <div class="line"></div>
    </div>
    <#if errors?has_content>
         <div style="text-align: center;color: red;margin-top: 20px;margin-bottom: -32px;">Ваш логин или пароль неверны!</div>
    </#if>
    <button class="butn">Войти</button>
</form>