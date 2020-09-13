<#import "parts/common.ftl" as c>

<@c.page>
    <h2>Редактирование ролей</h2>

    <form action="/user" method="post">
        <div class="input-group">
            <div class="input-group-prepend">
                <span class="input-group-text">Имя пользователя</span>
            </div>
            <input type="text" name="username" value="${user.username}" class="form-control">
        </div>
        <#list roles as role>
            <div>
                <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button class="btn btn-dark" type="submit">Сохранить</button>
    </form>
</@c.page>
