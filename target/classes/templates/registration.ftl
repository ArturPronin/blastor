<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<div class="mb-1"><h2>Регистрация</h2></div>
    <h3 style="color: red">${message?ifExists}</h3>
<@l.login "/registration" true />
</@c.page>