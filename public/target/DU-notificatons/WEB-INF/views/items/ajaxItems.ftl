<#include "review.ftl">
<#if reviews?? && reviews?has_content>
    <#list reviews as rev>
        <@review rev=rev/>
    </#list>
    <div class="from-review" style="display:none;">${from}</div>
</#if>