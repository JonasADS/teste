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
    <link rel="stylesheet" href="css/area-do-aluno.css">
    <title>Área do aluno</title>
</head>

<body>
        <%  
            if(session.getAttribute("nomeAl")!=null){
        %>
    <header>
        <div class="logo">
            <h1><a href="index.html"><span class="escola">Escola</span><span class="inova">Inova</span></a></h1>
        </div>
        <ul class="menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="sobre.jsp">Sobre</a></li>
            <li><a href="fale-conosco.jsp">Fale Conosco</a></li>
            <li><a href="sair.jsp" class="area">Sair</a></li>
        </ul>
    </header>

    <section class="container-area-do-aluno">
        <div class="menu-lateral">
            <div><a href="area-do-aluno-notas.jsp" class="btn-notas">Consultar notas</a></div>
            <div><a href="area-do-aluno-faltas.jsp" class="btn-faltas active">Consultar faltas</a></div>
        </div>
        <div class="form-aluno">
            <h2 class="area-do-aluno-titulo">Área do aluno</h2>

            <!-- Início do formulário de faltas -->
            <form action="#" class="form-aluno-falta">
                <div class="row">
                    <div class="aluno-faltas">
                        <label for="disciplinas">Selecione a disciplina:</label><br>
                        <select name="disciplinas" id="disciplinas">
                            <option value=""></option>
                            <option value="1">Língua Portuguesa</option>
                            <option value="2">Redação</option>
                            <option value="3">Matemática</option>
                            <option value="4">História</option>
                            <option value="5">Geografia</option>
                            <option value="6">Ciências</option>
                            <option value="7">Artes</option>
                            <option value="8">Educação Física</option>
                            <option value="9">Ingês</option>
                            <option value="10">Física</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col1">
                        <label for="total_faltas">Total de faltas:</label><br>
                        <input type="text" readonly>
                    </div>
                    <div class="col2">
                        <input type="submit" value="Buscar" class="btn-form-area-do-aluno-falta">
                    </div>
                </div>
            </form>
            <!-- Fim do formulário de faltas -->
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

    <%}
    else{
       response.sendRedirect("minha-area.jsp");
    }
    %>
    
</body>

</html>