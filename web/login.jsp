<!DOCTYPE html>
<html lang="en">
    <head>
        <%@include file="header.jsp"%>
    </head>
    <%session.setAttribute("user", "");%> 
    <body class="login">
        <div>
            <a class="hiddenanchor" id="signup"></a>
            <a class="hiddenanchor" id="signin"></a>

            <div class="login_wrapper">
                <div class="animate form login_form">
                    <section class="login_content">
                        <form action="./Logar" method="post">
                            <h1>Login do SISTEMA</h1>
                            <div>
                                <input type="text" name="user" id="user" class="form-control" placeholder="Usuário" required="" />
                            </div>
                            <div>
                                <input type="password" name="senha" id="senha" class="form-control" placeholder="Senha" required="" />
                            </div>
                            <div>
                                <input type="submit" value="Logar"> 
                                <!--
                                <a class="btn btn-default submit" href="sistema.jsp">Log in</a>
                                <a class="reset_pass" href="#">Esqueceu a senha?</a>
                                -->
                            </div>

                            <div class="clearfix"></div>

                            <div class="separator">
                                <p class="change_link">Novo no site?
                                    <a href="cadastraruser.jsp" class="to_register"> Criar uma nova conta </a>
                                </p>
                                <div class="clearfix"></div>
                                <br />
                                <div>
                                    <img src="images/logo.png" alt="...">
                                    <p>Sistema JSP! Desenvolvido por CC Uni9 VP</p>
                                </div>
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </body>
</html>
