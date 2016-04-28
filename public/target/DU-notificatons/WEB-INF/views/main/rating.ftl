<#macro rating rating>



<#if 0 == rating>
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
<#elseif 1 == rating>
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
<#elseif 2 gt rating>
    <#--rating < 2-->
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
<#elseif 2 == rating>
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
<#elseif 3 gt rating>
    <#--rating < 3-->
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
<#elseif 3 == rating>
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
<#elseif 4 gt rating>
    <#--rating < 3-->
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
<#elseif 4 == rating>
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
<#elseif 5 gt rating>
    <#--rating < 3-->
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
<#elseif 5 == rating>
    <div class="rating"><span></span><span></span><span></span><span></span><span></span></div>
</#if>

</#macro>