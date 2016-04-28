<#macro carItem car avgRating>
<#-- @ftlvariable name="car" type="ru.kpfu.itis.api.domain.Car" -->
<div class="slide">
    <div class="sect-1-cars-item">
        <img src="${car.indexImageUrl}" alt="${car.brand} ${car.model} ${car.generation}">
        <h4><a href="/item?id=${car.id}">${car.brand} ${car.model} ${car.generation}</a>
            <#include "rating.ftl">
            <@rating rating=avgRating[car.id?string]  />
        </h4>
        <ul>
            <li><span></span>Привод : <div class="_transmission">${car.driveUnit}</div></li>
            <li><span></span>КПП : <div class="_gearbox">${car.transmission}</div></li>
        </ul>
        <h5>цена : <div class="_price-from">${car.minimalPrice} <span>&#8381;</span></div></h5>
    </div>
</div>
</#macro>