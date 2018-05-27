<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Cliente</h3>
            </div>

            <div class="title">
                <div class=" col-xs-12 form-group top_search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Pesquisar...">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button">Ok</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Formulário<small>cadastro de cliente</small></h2>
                        <ul class="nav navbar-right panel_toolbox">
                            <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">Settings 1</a>
                                    </li>
                                    <li><a href="#">Settings 2</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="x_content">
                        <br>
                        <form id="demo-form2" method="POST" action="cadastra-cliente" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Pessoa</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div id="Sexo" class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" class="pessoa" name="pessoa" value="FISICA" data-parsley-multiple="gender"> &nbsp; Fisica &nbsp;
                                        </label>
                                        <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" class="pessoa" name="pessoa" value="JURIDICA" data-parsley-multiple="gender"> Juridica
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="label-name-raz" class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Nome ou Razão Social<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="nome" name="nome" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="fantasia">Nome Fantasia<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="last-name" name="fantasia" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="label-cpf-cnpj" for="cpf_cnpj" class="control-label col-md-3 col-sm-3 col-xs-12">CPF ou CNPJ:</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="number" id="cpf_cnpj" class="form-control col-md-7 col-xs-12" type="text" name="cpf_cnpj">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="label-rg-ie" for="cpf_cnpj" class="control-label col-md-3 col-sm-3 col-xs-12">RG ou IE:</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="rg_ie" class="form-control col-md-7 col-xs-12" name="rg_ie" type="text" name="middle-name">
                                </div>
                            </div>
                            <div class="item form-group">
                                <label for="email" class="control-label col-md-3 col-sm-3 col-xs-12">E-mail:</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="email" id="email" name="email" required="required" class="form-control col-md-7 col-xs-12" type="text" name="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="contato" class="control-label col-md-3 col-sm-3 col-xs-12">Contato:</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="contato" class="form-control col-md-7 col-xs-12" type="text" name="middle-name" data-inputmask="'mask' : '(999) 999-9999'">
                                </div>
                            </div>
                            <div id="div-gender" class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sexo</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div id="Sexo" class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" name="gender" class="gender" value="M" data-parsley-multiple="gender"> &nbsp; Masculino &nbsp;
                                        </label>
                                        <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" name="gender" class="gender" value="F" data-parsley-multiple="gender"> Feminino
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Data de Nasc.:<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="data_nasc" class="date-picker form-control col-md-7 col-xs-12" name="data_nasc" required="required" type="text" class="form-control" data-inputmask="'mask': '99/99/9999'">
                                    
                                </div>
                            </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <button class="btn btn-primary" type="button">Cancelar</button>
                                    <button class="btn btn-primary" type="reset">Resetar</button>
                                    <button type="submit" class="btn btn-success">Enviar</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>

            </div>
        </div>


    </div>
</div>
<!-- /page content -->