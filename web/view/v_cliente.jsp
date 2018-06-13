<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entities.Cliente"%>
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
                        <h2>Formul�rio<small>cadastro de cliente</small></h2>
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
                        <form id="demo-form2" method="POST" action="cliente" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Pessoa</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <div id="Sexo" class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-default botao-tipo" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" class="pessoa" name="pessoa" value="FISICA" data-parsley-multiple="gender"> &nbsp; Fisica &nbsp;
                                        </label>
                                        <label class="btn btn-default botao-tipo" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                            <input type="radio" class="pessoa" name="pessoa" value="JURIDICA" data-parsley-multiple="gender"> Juridica
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div style="display: none;" id="form-conteudo">
                                <div class="form-group">
                                    <label id="label-name-raz" class="control-label col-md-3 col-sm-3 col-xs-12" for="nome">Nome ou Raz�o Social<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" id="nome" name="nome" required="required" class="form-control col-md-7 col-xs-12">
                                    </div>
                                </div>
                                <div id="fantasia" class="form-group">
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
                            </div>
                            <div class="ln_solid"></div>
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                    <button type="button" id="canc-form" class="btn btn-primary" type="button">Cancelar</button>
                                    <button class="btn btn-primary" type="reset">Resetar</button>
                                    <button type="submit" class="btn btn-success">Enviar</button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Lista <small>cadastros de clientes</small></h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a></li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a></li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <table id="datatable" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>C�digo</th>
                                            <th>Nome/Raz�o Social</th>
                                            <th>CPF/CNPJ</th>
                                            <th>RG/IE</th>
                                            <th>Pessoa</th>
                                            <th>Atualizar</th>
                                            <th>Deletar</th>
                                        </tr>
                                    </thead>
                                    <%
                                        List<Cliente> clientes = (List<Cliente>) request.getAttribute("listaClientes");
                                    %>
                                    <tbody>

                                        <%
                                            for (Cliente linha : clientes) {

                                        %>
                                        <tr id="line-<%= linha.getId()%>">
                                            <td><%= linha.getId()%></td>
                                            <td><span id="nome-<%= linha.getId()%>"><%= linha.getNome()%></span></td>
                                            <td><span id="doc-<%= linha.getId()%>"><%= linha.getDoc_unico()%></span></td>
                                            <td><span id="reg-<%= linha.getId()%>"><%= linha.getRegistro()%></span>  </td>
                                            <td><span id="tipo-<%= linha.getId()%>"><%= linha.getPessoa()%></span></td>
                                            <td><button class="btn btn-info" data-toggle="modal" onclick="preparaModal(<%= linha.getId() %>)" data-target="#myModal">Atualizar</button></td>
                                            <td><button class="btn btn-danger" onclick="deletaCliente(<%= linha.getId()%>)" >Deletar</button> </td>
                                        </tr>

                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title">Altera��o de dados de cliente</h4>
                                            </div>
                                            <div class="modal-body">
                                                <h1>Dados Cliente</h1>
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th>Nome/Raz�o Social</th>
                                                                <th>CPF/CNPJ</th>
                                                                <th>RG/IE</th>
                                                                <!--<th>Pessoa</th>-->
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>                            
                                                                <td><input id="mNome" type="text"></td>
                                                                <td><input id="mCpf" type="text"></td>
                                                                <td><input id="mRg" type="text"></td>
                                                                <!--<td><input id="mTipo" type="text"></td>-->
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                                <button onclick="preparaUpdate()" class="btn btn-primary">Salvar Altera��es</button>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div><!-- /.modal -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->