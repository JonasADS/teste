<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Koh+Santepheap:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ephesis&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/painel-administrador.css">
    <title>Painel do administrador</title>
    <link rel="stylesheet" href="css/estiloMensagem.css" type="text/css" />
</head>

<body>
         <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            /*  vamos verificar se esta página está recebendo valores 
            nos parâmetros para mostrar no segundo formulário  */
            String nomeP = request.getParameter("nome");
            String sbNomeP = request.getParameter("sobrenome");
            String IDresp = request.getParameter("idResp");
            String id_User= request.getParameter("idUser");
            
            if (nomeP == null) nomeP = "";
            if (sbNomeP == null) sbNomeP = "";
            if (IDresp == null) IDresp = "";
            if (id_User == null) id_User = "";
        %>
    <header>
        <div class="logo">
            <h1><a href="index.html"><span class="escola">Escola</span><span class="inova">Inova</span></a></h1>
        </div>
        <ul class="menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="sobre.html">Sobre</a></li>
            <li><a href="fale-conosco.html">Fale Conosco</a></li>
            <li><a href="sair.jsp" class="area">Sair</a></li>
        </ul>
    </header>

    <section class="container-area-do-administrador">
        <div class="menu-lateral">
            <div><a href="painel-administrador-cadastrar.jsp" class="btn-action btn-cadastrar">Cadastrar</a></div>
            <div><a href="painel-administrador-consultar.jsp" class="btn-action btn-consultar">Consultar</a></div>
            <div><a href="painel-administrador-editar.jsp" class="btn-action btn-editar active">Editar</a></div>
            <div><a href="painel-administrador-deletar.jsp" class="btn-action btn-deletar">Deletar</a></div>
        </div>
        <div class="form-administrador">
            <h2 class="area-do-administrador-titulo">Painel do administrador</h2>

            <!-- Início do formulário de edição -->
            <form action="Consultar_2.jsp" class="form-consultar-editar form-auxiliar-visible">
                <div class="row">
                    <div class="col1">
                        <label for="editar_tipo">Selecione o tipo de usuário:</label><br>
                        <select name="consultar_tipo" id="editar_tipo" onchange="changeSelectEdita()">
                            <option value=""></option>
                            <option value="1">Aluno</option>
                            <option value="2">Professor</option>
                            <option value="3">Responsável</option>
                        </select>
                    </div>

                    <div class="col2">
                        <label for="id_usuario">ID do usuário:</label><br>
                        <input type="text" name="id_usuario" id="id_usuario">
                    </div>
                </div>
                

                <div class="row-btn">
                    <input type="submit" name="bt_cons" value="Consultar" class="btn-form-area-do-administrador-falta">
                </div>

            </form>
            
                  <%                  
                    String Dados= request.getParameter("dados");
                    
                  if(Dados!=null){%>                
                  <span class="erro">DADOS NÃO ENCONTRADOS</span>                  
                 <%}%>

            <form action="Editar.jsp" class="form-administrador-editar form-administrador-visible">
                <div class="row">
                    
                    <%if(request.getParameter("tipoUserAl") != null){%>

                    <div class="col1">
                        <label for="deletar_tipo">Tipo de usuário:</label><br>
                        <select name="tipo_usuario" id="deletar_tipo" onchange="changeSelectDeleta()">
                            <option value="1">Aluno</option>
                            <option value="2">Professor</option>
                            <option value="3">Responsável</option>
                        </select>
                    </div>

                    <%}
                    else if(request.getParameter("tipoUserProf") != null){%>
                    
                    <div class="col1">
                        <label for="deletar_tipo">Tipo de usuário:</label><br>
                        <select name="tipo_usuario" id="deletar_tipo" onchange="changeSelectDeleta()">
                            <option value="2">Professor</option>
                            <option value="3">Responsável</option>
                            <option value="1">Aluno</option>
                        </select>
                    </div>
                   <%}
                    else if(request.getParameter("tipoUserResp") != null){%>
                    
                    <div class="col1">
                        <label for="deletar_tipo">Tipo de usuário:</label><br>
                        <select name="tipo_usuario" id="deletar_tipo" onchange="changeSelectDeleta()">
                            <option value="3">Responsável</option>
                            <option value="2">Professor</option> 
                            <option value="1">Aluno</option>
                        </select>
                   </div>
                   <%}%>
                   
                   <%if(request.getParameter("idUser") != null){%>
                    
                    <div class="col2">
                        <label for="id_usuario">ID do usuário:</label><br>
                        <input type="text" name="id_usuario" value="<%=id_User%>" id="id_usuario">
                    </div>
                    
                    <div class="col1">
                        <label for="nome">Nome:</label><br>
                        <input type="text" name="nome" value="<%=nomeP%>" id="nome">
                    </div>

                    <div class="col2">
                        <label for="sobrenome">Sobrenome:</label><br>
                        <input type="text" name="sobrenome" value="<%=sbNomeP%>" id="sobrenome">
                    </div>
                </div>
                    
               <%
                if(request.getParameter("idResp") != null){%>
                    <div class="">
                        <label for="id_responsavel">ID do responsável:</label><br>
                        <input type="text" name="id_responsavel" id="id_resp" value="<%=IDresp%>">
                    </div>
               <%}%>
                
               <div class="row-btn">
                    <input type="submit" value="Editar" class="btn-form-area-do-administrador-falta">
                </div>
                    <%}%>
            

               
             <%-- <div class="row row-responsavel-edita none">
                    <div class="col1">
                        <label for="id_responsavel">ID do responsável:</label><br>
                        <input type="text" name="id_responsavel" id="id_responsavel">
                    </div>

                    <div class="col2">
                    </div>
                </div> --%>

                

            </form>
             
                               <%                  
                    String Suc= request.getParameter("suc");
                    String Erro= request.getParameter("erro");
                    
                  if(Suc!=null){%>                
                  <span class="sucesso">DADOS EDITADOS COM SUCESSO</span>                    
                 <%}
                  else if(Erro!=null){%>                
                  <p class="erro">ERRO AO EDITAR OS DADOS</p>                    
                 <%}%>
            <!-- Fim do formulário de edição -->
        </div>
    </section>

    <footer>
        <p class="heavy">Escola Principal Inova</p>
        <div class="footer-div">
            <p>São Paulo, Brasil</p>
        </div>
        <div class="footer-div">
            <p class="light">Rua Dr. Ulisses Cirilo, 225</p>
            <p class="light">São Miguel Pta.</p>
        </div>
        <p class="light">(11)3333-3333</p>
        <p class="light">contato@escolaprincipalinova.com.br</p>
        <div class="footer-container">
            <div class="footer-icons">
                <div><img src="./images/icon-lin.png" alt=""></div>
                <div><img src="./images/icon-lin.png" alt=""></div>
                <div><img src="./images/icon-lin.png" alt=""></div>
            </div>
            <div>
                <p class="footer-text-right">Um novo conceito em escola</p>
            </div>
        </div>
        <span>2012 All rights reserved</span>
        <br>
        <span>privacy policy</span>
        <span>Web site terms of use</span>
        <span>LGPD</span>
        <span>cookie usage</span>
    </footer>

    <script>
        const selectDeleta = document.querySelector('#deletar_tipo');
        const changeSelectDeleta = () => {
            if (selectDeleta.value == "aluno") {
                document.querySelector('.row-responsavel-deleta').classList.remove('none');
            } else {
                document.querySelector('.row-responsavel-deleta').classList.add('none');
            }
        }
    </script>
</body>

</html>