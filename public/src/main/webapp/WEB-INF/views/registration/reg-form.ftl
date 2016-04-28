<#assign form=JspTaglibs["http://www.springframework.org/tags/form"]>
<@form.form modelAttribute="registrationForm" action="/reg.json" acceptCharset="UTF-8" method="post" id="registration" >
<h2>Регистрация</h2>
<div class="inp-wr control-group" id="nicknameControlGroup">
    <@form.input path="nickname" id="reg-name" class="js_in" name="name" type="text" placeholder="Имя пользователя" required="required"/>
    <div class="line"></div>
    <@form.errors path="nickname" cssStyle="color: red;" />
</div>
<div class="inp-wr control-group" id="emailControlGroup">
    <@form.input path="email" id="reg-email" class="js_in" name="email" type="text" placeholder="Электронная почта" required="required"/>
    <div class="line"></div>
    <@form.errors path="email" cssStyle="color: red;" />
</div>
<div class="inp-wr control-group" id="passwordControlGroup">
    <@form.input path="password" id="reg-pass" class="js_in2" name="password" type="password" placeholder="Пароль" required="required"/>
    <div class="line"></div>
   <@form.errors path="password" cssStyle="color: red;" />
</div>
<div class="inp-wr control-group" id="passwordtwoControlGroup">
    <@form.input path="passwordtwo" id="reg-2pass" class="js_in2" name="passwordtwo" type="password" placeholder="Подтверждение пароля" required="required"/>
    <div class="line"></div>
    <@form.errors path="passwordtwo" cssStyle="color: red;" />
</div>
<div id="help-inline"></div>
<button id="reg-butn" class="butn">Отправить</button>
</@form.form>
<#--<form action="/register" method="post" id="registration">-->
<#--<h2>Регистрация</h2>-->
<#--<div class="inp-wr">-->
<#--<input id="reg-name" class="js_in" name="name" type="text" placeholder="Имя пользователя" required="required">-->
<#--<div class="line"></div>-->
<#--</div>-->
<#--<div class="inp-wr">-->
<#--<input id="reg-email" class="js_in" name="email" type="text" placeholder="Электронная почта" required="required">-->
<#--<div class="line"></div>-->
<#--</div>-->
<#--<div class="inp-wr">-->
<#--<input id="reg-pass" class="js_in2" name="password" type="password" placeholder="Пароль" required="required">-->
<#--<div class="line"></div>-->
<#--</div>-->
<#--<div class="inp-wr">-->
<#--<input id="reg-2pass" class="js_in2" name="passwordtwo" type="password" placeholder="Подтверждение пароля" required="required">-->
<#--<div class="line"></div>-->
<#--</div>-->
<#--<button id="reg-butn" class="butn">Отправить</button>-->
<#--</form>-->