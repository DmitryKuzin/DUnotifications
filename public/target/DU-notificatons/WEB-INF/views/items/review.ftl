<#macro review rev>
<#-- @ftlvariable name="rev" type="ru.kpfu.itis.api.domain.Review" -->
<#-- @ftlvariable name="car" type="ru.kpfu.itis.api.domain.Car" -->

<div class="reviews-usrrev">
    <div class="reviews-usrrev-hdr">
        <h3>
            <#include "../main/rating.ftl">
            <@rating rating=rev.rating />
        </h3>
    </div>
    <hr>
    <div class="reviews-usrrev-body">
        <div class="reviews-usrrev-body-text">
            ${rev.good}
        </div>
    </div>
    <hr>
    <div class="reviews-usrrev-body">
        <div class="reviews-usrrev-body-text">
            ${rev.bad}
        </div>
    </div>
    <hr>
    <div class="reviews-usrrev-body">
        <div class="reviews-usrrev-body-text">
            ${rev.comment}
        </div>
    </div>
</div>
</#macro>