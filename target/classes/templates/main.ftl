<#import "parts/common.ftl" as c>

<@c.page>
    <#assign sum = 7>
    <#assign quantity = 200>
    <a class="btn btn-dark" style="background-color: #151515" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
        <h3>Добавить новый заказ</h3>
    </a>
    <div class="collapse" id="collapseExample">
        <div class="form-group mt-3">
            <form method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text mt-3 ">Введите дату и время доставки</span>
                        <input type="text" class="form-control mt-3" name="companyDate" placeholder="ДД.ММ.ГГГГ">
                        <input type="text" class="form-control mt-3" name="companyTime" placeholder="ЧЧ.ММ">
                    </div>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="companyName" placeholder="Наименование организации">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="tag" placeholder="Количество">
                </div>
                <div class="form-group">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Выберите тип формы</span>
                    </div>
                    <select class="custom-select">
                        <option selected>Меню для выбора</option>
                        <option value="1">К-101</option>
                        <option value="2">К-102</option>
                        <option value="3">К-103</option>
                        <option value="4">К-104</option>
                        <option value="5">К-105</option>
                        <option value="6">К-106</option>
                        <option value="7">К-107</option>
                        <option value="8">К-108</option>
                    </select>
                </div>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="companyPlace" placeholder="Адрес доставки">
                </div>
                <div class="form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Сумма заказа</span>
                        <span class="input-group-text">${sum*quantity}</span>
                        <span class="input-group-text">₽</span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="file" id="customFile">
                        <label class="custom-file-label" for="customFile">Выбрать файл</label>
                    </div>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="text" placeholder="Введите коментарий">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <div class="form-group">
                    <button type="button" class="btn btn-dark" style="background-color: #151515" data-toggle="modal" data-target="#myModal">Сделать заказ</button>
                    <div id="myModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header"><button type="submit" class="btn btn-dark" style="background-color: #151515">x</button>
                                    <h4 class="modal-title">Оформление заказа</h4>
                                </div>
                                <div class="modal-body">Заказ оформлен!</div>
                                <div class="modal-footer"><button type="submit" class="btn btn-dark" style="background-color: #151515">Закрыть</button></div>
                            </div>
                        </div>
                    </div>
                </div>



            </form>
        </div>
    </div>

</@c.page>