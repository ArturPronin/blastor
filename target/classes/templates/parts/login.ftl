<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">ФИО :</label>
            <div class="col-sm-5">
                <input type="text" name="username" class="form-control" placeholder="User name" />
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Пароль :</label>
            <div class="col-sm-5">
                <input type="password" name="password" class="form-control" placeholder="Password" />
            </div>
        </div>
        <#if isRegisterForm>
            <div class="form-group row">
                <label for="inputEmail" class="col-sm-2 col-form-label">Email :</label>
                <div class="col-sm-5">
                    <input type="email" name="email" class="form-control" id="inputEmail" placeholder="email@email.ru" data-error="Bruh, that email address is invalid" required />
            </div>
            </div>
        </#if>
        <#if isRegisterForm>
            <div class="form-group row">
                <label for="phonenum" class="col-sm-2 col-form-label">Номер телефона :</label>
                <div class="col-sm-5">
                    <input  id="phonenum" type="tel" name="phone" class="form-control" placeholder="+79000000000" pattern="^+\d{11}$" />
                </div>
            </div>
        </#if>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <#if !isRegisterForm><a class="btn btn-dark" style="background-color: #151515" href="/registration" role="button">Регистрирация</a></#if>
        <button class = "btn btn-dark" style="background-color: #151515" type="submit"><#if isRegisterForm>Зарегистрироваться<#else >Войти</#if></button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class = "btn btn-light" type="submit">Выйти</button>
    </form>
</#macro>
