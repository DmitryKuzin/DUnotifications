<#assign form=JspTaglibs["http://www.springframework.org/tags/form"]>
<#include "../templates/mainTemplate.ftl">
<#-- @ftlvariable name="car" type="ru.kpfu.itis.api.domain.Car" -->
<@mainTemplate title="Отзыв на ${car.brand} ${car.model} ${car.generation}" styles=[
"css/fonts.min.css",
"css/header.min.css",
"css/create-view.min.css",
"libs/magnific-popup/magnific-popup.css",
"css/secondaryfooter.min.css"
]
scripts=[
"js/libs.js",
"libs/checkbox/checkbox.js",
"libs/autoNumeric/autoNumeric-min.js",
"libs/magnific-popup/jquery.magnific-popup.min.js",
"js/common.js",
"js/common-review.js"
] />

<#macro m_body>
<section>
    <div class="container">
        <div class="row">
    <@form.form commandName="reviewForm" action="/create-review/new-review?id=${car.id}" acceptCharset="UTF-8" method="post">

            <div class="col-lg-12">
                <h3>Постарайтесь подробно и объективно описать хорошие и плохие стороны автомобиля. </h3>
                <hr>
            </div>
            <div class="col-lg-12">
                <h4>Насколько этот авто вам понравился
                    <div id="rating" class="rating">
                        <i id="1" class="fa fa-star-o"></i>
                        <i id="2" class="fa fa-star-o"></i>
                        <i id="3" class="fa fa-star-o"></i>
                        <i id="4" class="fa fa-star-o"></i>
                        <i id="5" class="fa fa-star-o"></i>
                        <#--<input id="rating-inp" type="hidden" name="rating">-->
                        <@form.input path="rating" id="rating-inp" type="hidden"/>
                        <@form.errors path="rating" cssStyle="color: red;" />
                    </div>

                </h4>
            </div>
            <div class="col-lg-12">
                <h4>Достоинства</h4>
                <#--<textarea id="good" name="good" rows='3' placeholder='Напишите что-то интересное'></textarea>-->
                <@form.textarea path="good"  rows="3" id="good" placeholder='Напишите что-то интересное'/>
                <@form.errors path="good" cssStyle="color: red;" />
            </div>
            <div class="col-lg-12">
                <h4>Недостатки</h4>
                <#--<textarea id="bad" name="bad" rows='3' placeholder='Напишите что-то интересное'></textarea>-->
                <@form.textarea id="bad" path="bad" rows='3' placeholder='Напишите что-то интересное' />
                <@form.errors path="bad" cssStyle="color: red;" />
            </div>
            <div class="col-lg-12">
                <h4>Коментарии</h4>
                <#--<textarea id="opinion" name="comment" rows='3' placeholder='Напишите что-то интересное'></textarea>-->
                <@form.textarea id="opinion" path="comment" rows='3' placeholder='Напишите что-то интересное'/>
                <@form.errors path="comment" cssStyle="color: red;" />
            </div>
            <div class="col-lg-12">
                <button type="submit" class="butn">Отправить</button>
            </div>

    </@form.form>
        </div>
    </div>
</section>
</#macro>