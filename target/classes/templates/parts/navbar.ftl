<#include "security.ftl">


<#import "login.ftl" as l>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #151515">
    <a class="navbar-brand" href="/">
        <img src="https://clck.ru/Qmo3i" width="50" height="50" class="d-inline-block align-centre" alt="">
        Blastor
    </a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Главная</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/main">Заказать</a>
            </li>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">Пользователи</a>
            </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/message">Заказы</a>
            </li>
            </#if>
        </ul>

    </div>
    <div class="form-row">
        <div class="form-inline">
            <#if isAdmin>
            <form method="get" action="/message" class="form-inline">
                <input type="text" name="filter" class="form-control" ${filter!?ifExists}" placeholder="Поиск по количеству">
                <button class = "btn btn-light ml-2 mr-4" type="submit">Поиск</button>
            </form>
            </#if>
        </div>
        <#if isUser>
        <div class="navbar-text mr-3">${name}</div>
        <@l.logout/>
        </#if>
    </div>
</nav>