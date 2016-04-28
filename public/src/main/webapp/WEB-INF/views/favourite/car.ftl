<#macro carItem favourite>
<#-- @ftlvariable name="favourite" type="ru.kpfu.itis.api.domain.Favourites" -->

<div class="catalogcar" id="${favourite.car.id}">
    <div class="row">
        <div class="col-lg-4">
            <a href="/item?id=${favourite.car.id}">
                <img src="${favourite.car.getCatalogImageUrl()}" alt="${favourite.car.brand} ${favourite.car.model}">
            </a>
        </div>
        <div class="col-lg-5">
            <div class="catalogcar-descr">
                <a href="/item?id=${favourite.car.id}"><h3 class="catalogcar-descr-name">${favourite.car.brand} ${favourite.car.model} ${favourite.car.generation}</h3></a>
            </div>
            <div class="catalogcar-descr-featur">
                <ul>
                    <li>Поколение: ${favourite.car.generation}</li>
                    <li>Привод: ${favourite.car.driveUnit}</li>
                    <li>КПП: ${favourite.car.transmission}</li>
                </ul>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="catalogcar-price">
                <h2><div class="_price"> ₽ ${favourite.car.getMinimalPrice()}</div> </h2>
                <div class="exit"></div>
            </div>

        </div>
        <div>
            <a href="/item?id=${favourite.car.id}" class="catalogcar-more"><span>Подробнее</span> <i class="fa fa-angle-right"></i></a>
        </div>
    </div>
</div>


</#macro>