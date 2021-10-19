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
    <link rel="stylesheet" href="css/fale-conosco.css">
    <title>Fale Conosco</title>
</head>

<body>
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

    <section class="fale-conosco">
        <form class="left" action="#">
            <div>
                <label for="id-subject">Assunto:</label><br>
                <select name="subject" class="max-size" id="id-subject">
                    <option value=""></option>
                    <option value="financeiro">Financeiro</option>
                    <option value="matricula-rematricula">Matricula e Rematricula</option>
                    <option value="notas">Notas</option>
                    <option value="faltas">Faltas</option>
                    <option value="faltas">Outros</option>
                </select>
            </div>

            <div>
                <label for="name">Nome:</label><br>
                <input type="text" class="max-size" id="name" required>
            </div>

            <div class="medium-size">
                <div>
                    <label for="email">E-mail:</label><br>
                    <input type="email" id="email" required>
                </div>

                <div>
                    <label for="fone">Telefone:</label><br>
                    <input type="text" id="fone" required>
                </div>
            </div>

            <div>
                <label for="message">Mensagem:</label><br>
                <textarea name="message" class="max-size" id="message" cols="30" rows="10"></textarea>
            </div>
            <span class="container">
                <input type="submit" class="btn-submit" id="submit" value="Enviar">
            </span>
        </form>

        <div class="right">
            <div>
                <h3>Escola Principal Inova</h3>
                <p>A bela arte de ensinar</p>
            </div>
            <div class="bottom">
                <p>Fale conosco</p>
                <p>(11)3333-3333</p>
                <p>contato@escolaprincipalinova.com.br</p>
            </div>
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
</body>

</html>