<#macro accordion filter>
<#-- @ftlvariable name="filter" type="ru.kpfu.itis.api.domain.CatalogFilter" -->
<#-- @ftlvariable name="option" type="ru.kpfu.itis.api.domain.Option" -->

<form class="srch-box" >
<aside class="accordion">
    <#list filter.children as child>
        <h1>${child.name}</h1>
        <div>
            <#list child.options as option>
                <#if option.getType()=="RANGE">
                    <span>${option.title}</span>
                    <input class="_money moneyfrom" id="money-from" name="money-from" type="text" placeholder="${moneyFrom}">
                <#elseif option.getType()=="CHECKBOX">
                    <label for="checkbox1" class="srch-box-chboxlabel js_customHeader">
                    <input id="checkbox1" name="used" type="checkbox" value="${option.title}">
                    </label>
                    <span>${option.title}</span>
                </#if>

            </#list>
        </div>
    </#list>
</aside>
</form>


</#macro>