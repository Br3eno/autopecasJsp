<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Fornecedores</h3>
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
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Formulário<small>cadastro de fornecedores</small></h2>
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
                                <label id="label-name-raz" class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Razão Social<span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="text" id="nome" name="nome" required="required" class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="label-cpf-cnpj" for="cnpj" class="control-label col-md-3 col-sm-3 col-xs-12">CNPJ:</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input type="number" id="cnpj" class="form-control col-md-7 col-xs-12" type="text" name="cnpj">
                                </div>
                            </div>
                            <div class="form-group">
                                <label id="label-rg-ie" for="ie" class="control-label col-md-3 col-sm-3 col-xs-12">IE:</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <input id="ie" class="form-control col-md-7 col-xs-12" name="rg_ie" type="number" name="ie">
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
                    
                    
                    <div class="">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Lista <small>cadastros de fornecedores</small></h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Razão Social</th>
                                            <th>CNPJ</th>
                                            <th>IE</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th></th>
                                            <td>teste</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <th></th>
                                            <td>Teste</td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>      
                    
                    
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->