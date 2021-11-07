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
    <link rel="stylesheet" href="css/area-do-professor.css">
    <title>Área do professor</title>
</head>

<body>
        <%  
            if(session.getAttribute("nomeP")!=null){
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

    <section class="container-area-do-professor">
        <div class="menu-lateral">
            <div><a href="area-do-professor-notas.jsp" class="btn-notas active">Lançar notas</a></div>
            <div><a href="area-do-professor-faltas.jsp" class="btn-faltas">Controle de frequência</a></div>
        </div>
        <div class="form-professor">
            <h2 class="area-do-professor-titulo">Área do professor</h2>

            <!-- Início do formulário de notas -->
            <form action="#" class="form-professor-nota">
                <div class="row">
                    <div class="col1">
                        <label for="turma_notas">Selecione a turma:</label><br>
                        <select name="turma_notas" id="turma_notas">
                            <option value=""></option>
                            <option value="1°_A">1° A</option>
                            <option value="2°_A">2° A</option>
                            <option value="3°_A">3° A</option>
                        </select>
                    </div>
                    <div class="col2">
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
                        <label for="aluno">Selecione o aluno:</label><br>
                        <select name="aluno" id="aluno">
                            <option value=""></option>
                            <option value="Arthur">Arthur</option>
                            <option value="Felipe">Felipe</option>
                            <option value="Gustavo">Gustavo</option>
                            <option value="Gabriel">Gabriel</option>
                            <option value="Matheus">Matheus</option>
                        </select>
                    </div>

                    <div class="col2">
                        <label for="tipo-nota">Tipo de nota:</label><br>
                        <select name="tipo-nota" id="tipo-nota">
                            <option value=""></option>
                            <option value="Nota_1">A1</option>
                            <option value="Nota_2">A2</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <div class="col1">
                        <label for="valor-nota">Valor da nota:</label><br>
                        <input type="number" name="valor-nota" id="valor-nota">
                    </div>

                    <div class="col2">
                    </div>
                </div>
                <div class="row-btn">
                    <input type="submit" value="Gravar" class="btn-form-area-do-professor-nota">
                </div>
            </form>
            <!-- Fim do formulário de notas -->

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