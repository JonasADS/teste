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
    <link rel="stylesheet" href="css/minha-area.css">
    <title>Minha área</title>
        <style>
            .status{
                color: red;
                font-weight: bold;
                background: #FFA07A;
                padding: 10px;
                border-radius: 10px;
                width: 70%;
                text-align: center;
                margin: auto;
                margin-bottom: 20px;
            }
        </style>
</head>

<body>
        <%  
            if(session.getAttribute("nomeAl")!=null){
                response.sendRedirect("area-do-aluno-notas.jsp");
            }
            else if(session.getAttribute("nomeP")!=null){
                response.sendRedirect("area-do-professor-notas.jsp");
            }
            else if(session.getAttribute("NomeAdm")!=null){
                response.sendRedirect("painel-administrador-cadastrar.jsp");
            }
            else{%>
            
    <header>
        <div class="logo">
            <h1><a href="index.html"><span class="escola">Escola</span><span class="inova">Inova</span></a></h1>
        </div>
        <ul class="menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="sobre.jsp">Sobre</a></li>
            <li><a href="fale-conosco.jsp">Fale Conosco</a></li>
            <li><a href="minha-area.jsp" class="area">Minha área</a></li>
        </ul>
    </header>


    <section class="login-container">
        <div class="login-form">

            <form action="autenticacao.jsp" method="post">
         <% 
            String resp = request.getParameter("incorreto");
            String tipo_inc = request.getParameter("tipoIncorreto");
            String semValores = request.getParameter("SemValores");
            
	         if (resp != null)
		out.println("<div class='status'> Usuário ou senha incorretos </div>");
                 
                 else if(tipo_inc != null)
                 out.println("<div class='status'> Selecione o tipo de usuário </div>");
                 
                 else if(semValores != null)
                 out.println("<div class='status'>Informe os dados solicitados</div>");
        %>
                <div>
                    <label for="login">Login:</label><br>
                    <input type="text" name="Login">
                </div>
                <div class="form-password">
                    <label for="senha">Senha:</label><br>
                    <input type="password" name="entradaSenha">
                </div>
                <div class="form-password">
                    <label for="usuario">Selecione sua área:</label><br>
                    <select name="tipo_usuario" id="usuario" class="tipo-usuario">
                        <option value=""></option>
                        <option value="1">Aluno</option>
                        <option value="2">Professor</option>
                        <option value="3">Administrador</option>
                    </select>
                </div>
                <div class="form-submit">
                    <a href="#">esqueceu sua senha?</a>
                    <input type="submit" value="Entrar">
                </div>
            </form>
        </div>

        <div class="login-image">
            <img src="./images/login.png" alt="">
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
       <%}%>
</body>

</html>