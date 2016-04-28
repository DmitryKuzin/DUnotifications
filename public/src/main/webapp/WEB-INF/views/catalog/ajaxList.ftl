<div id="extradition">
<#list cars as car>
    <#include "catalogCarItem.ftl">
    <@catalogCar car=car ratingMap=ratingMap/>
</#list>
</div>
