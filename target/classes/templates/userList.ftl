<#import "parts/common.ftl" as c>

<@c.page>
    <h2>Список пользователей</h2>

    <#assign count = 0>
    <table class="table table-dark">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Логин</th>
            <th scope="col">Пароль</th>
            <th scope="col">Роль</th>
            <th scope="col">Редактор</th>
        </tr>
        </thead>
        <tbody>
    <#list users as user>
        <#assign count = count + 1>
        <tr>
            <td>${count}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td><#list user.roles as role>${role}<#sep>, </#list></td>
            <td><a class="btn btn-dark" href="/user/${user.id}" role="button">Редактировать</a> </td>
        </tr>
    </#list>
        </tbody>
    </table>
</@c.page>