<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>Dólar Hoje</h2>
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
                        <jsp:useBean id="dollar" class="beans.Calculo" type="beans.Calculo" scope="page"/>

                        U$ <%= dollar.ConverterDolar(3.67)%>
                        = R$ 3,67

                    </div>
                </div>
            </div>
        </div>
                        <!--nome cliejte, produto, preço, desconto, valor, total !-->
                       
        <div class="title_left">
            <h3>Efetivação de Vendas</h3>
            <div class="x_content">
                        <br>
                        <form id="demo-form2" method="POST" action="vendas" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                            <div class="form-group">
                                    <label id="label-name-client" class="control-label col-md-3 col-sm-3 col-xs-12" for="nomecliente">Nome Cliente:<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="nome" name="nomecliente" required="required" class="form-control col-md-7 col-xs-12">
                                    </div>
                            </div>
                            <div class="form-group">
                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="produto">Produto:<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="last-name" name="produto" required="required" class="form-control col-md-7 col-xs-12">
                                    </div>
                            </div>
                            <div class="form-group">
                                    <label id="label-cpf-cnpj" for="preco" class="control-label col-md-3 col-sm-3 col-xs-12">Preço:</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="number" id="cpf_cnpj" class="form-control col-md-7 col-xs-12" type="text" name="preco">
                                    </div>
                            </div>
                            <div class="form-group">
                                    <label id="label-rg-ie" for="desconto" class="control-label col-md-3 col-sm-3 col-xs-12">Desconto:</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="desconto" class="form-control col-md-7 col-xs-12" name="desconto" type="text" name="middle-name">
                                    </div>
                            </div>
                            <div class="form-group">
                                    <label for="Valor" class="control-label col-md-3 col-sm-3 col-xs-12">Valor:</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="number" id="valor" name="valor" required="required" class="form-control col-md-7 col-xs-12" type="text" name="email">
                                    </div>
                            </div>
                            <div class="form-group">
                                    <label for="total" class="control-label col-md-3 col-sm-3 col-xs-12">Total:</label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input id="total" class="form-control col-md-7 col-xs-12" type="number" name="total">
                                    </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <button type="button" id="canc-form" class="btn btn-primary" type="button">Cancelar</button>
                                    <button class="btn btn-primary" type="reset">Resetar</button>
                                    <button type="submit" class="btn btn-success">Enviar</button>
                                </div>
                            </div>
                        </form>
    </div>
</div>