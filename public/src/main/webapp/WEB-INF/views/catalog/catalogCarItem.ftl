<#macro catalogCar car ratingMap>
<#-- @ftlvariable name="car" type="ru.kpfu.itis.api.domain.Car" -->
<div class="catalogcar" id="${car.id}">
    <div class="row">
        <div class="col-lg-4">
            <a href="/item">
                <img src="${car.catalogImageUrl}" alt="${car.brand} ${car.model} ${car.generation}">
            </a>
        </div>
        <div class="col-lg-5">
            <div class="catalogcar-descr">
                <a href="/item?id=${car.id}"><h3 class="catalogcar-descr-name">${car.brand} ${car.model}
                <#include "../main/rating.ftl"/>
                    <@rating rating=ratingMap[car.id?string]/>
                </h3></a>
            </div>
            <div class="catalogcar-descr-featur">
                <ul>
                    <li>Поколение: ${car.generation}</li>
                    <li>Привод: ${car.driveUnit}</li>
                    <li>КПП: ${car.transmission}</li>
                </ul>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="catalogcar-price">
                <h2><div class="_price"> ₽ ${car.getMinimalPrice()}</div></h2>
            </div>

        </div>
        <div>
            <a href="/item?id=${car.id}" class="catalogcar-more"><span>Подробнее</span> <i class="fa fa-angle-right"></i></a>
        </div>
    </div>
</div>
</#macro>