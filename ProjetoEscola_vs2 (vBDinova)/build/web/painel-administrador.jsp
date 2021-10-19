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
    <style>
        .sucesso{
         color: green;
         font-weight: bold;
      }
      .erro{
          color: red;
          font-weight: bold;
      }
    </style>
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

    <section class="container-area-do-administrador">
        <div class="menu-lateral">
            <div><a href="#" class="btn-action btn-cadastrar active">Cadastrar</a></div>
            <div><a href="#" class="btn-action btn-consultar">Consultar</a></div>
            <div><a href="#" class="btn-action btn-editar">Editar</a></div>
            <div><a href="#" class="btn-action btn-deletar">Deletar</a></div>
        </div>
        <div class="form-administrador">
            <h2 class="area-do-administrador-titulo">Painel do administrador</h2>
            
            <form action="Cadastro.jsp" class="form-administrador-cadastrar">
                <div class="row">
                    <div class="col1">
                        
                        <label for="cadastrar_tipo">Selecione o tipo de usuário:</label><br>
                        
                        <select name="cadastrar_tipo" id="cadastrar_tipo" onchange="changeSelect()">
                            <option value=""></option>
                            <option value="1">Aluno</option>
                            <option value="2">Professor</option>
                            <option value="3">Responsável</option>
                        </select>
                        
                    </div>
                    <div class="col2">
                    </div>
                </div>

                <div class="row">
                    <div class="col1">
                        <label for="nome">Nome:</label><br>
                        <input type="text" name="nome" id="nome">
                    </div>

                    <div class="col2">
                        <label for="sobrenome">Sobrenome:</label><br>
                        <input type="text" name="sobrenome" id="sobrenome">
                    </div>
                </div>

                <div class="row row-responsavel none">
                    <div class="col1">
                        <label for="id_responsavel">ID do responsável:</label><br>
                        <input type="text" name="id_responsavel" id="id_responsavel">
                    </div>

                    <div class="col2">
                    </div>
                </div>
                
                <div class="row-btn">
                    <input type="submit" value="Gravar" class="btn-form-area-do-administrador-nota">
                </div>
                
                <%
                    String respSuc= request.getParameter("dadosSuc");
                    String respErro= request.getParameter("dadosErro");
                    String respErro2= request.getParameter("dadosErro2");
                  if(respSuc!=null){%>                  
                  <br> <p class="sucesso"><%=respSuc%></p>                    
                  <%}%>
                  
                  <% if(respErro!=null){%>                  
                  <br> <p class="erro"><%=respErro%></p>                    
                  <%}%>
                  
                  <% if(respErro2!=null){%>                  
                  <br><p class="erro">ERRO! Verifique o ID do responsável</p>                    
                  <%}%>
            </form>

            <form action="#" class="form-administrador-falta none">
                <div class="row">
                    <input type="date">
                    <div class="turma-faltas">
                        <label for="turma_faltas">Selecione a turma:</label><br>
                        <select name="turma_notas" id="turma_notas">
                            <option value=""></option>
                            <option value="1°_A">1° A</option>
                            <option value="2°_A">2° A</option>
                            <option value="3°_A">3° A</option>
                        </select>
                    </div>
                </div>

                <div class="row">
                    <table class="table-faltas">
                        <thead>
                            <tr>
                                <th>Número</th>
                                <th>Nome</th>
                                <th>Série</th>
                                <th>Turma</th>
                                <th>Presença</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>01</td>
                                <td>Felipe</td>
                                <td>1º</td>
                                <td>A</td>
                                <td><input type="checkbox"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="row-btn">
                    <input type="submit" value="Gravar" class="btn-form-area-do-administrador-falta">
                </div>
            </form>
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
        const btn = document.querySelectorAll('.btn-action');
        const select = document.querySelector('#cadastrar_tipo');

        const changeSelect = () => {
            if (select.value == "1") {
                document.querySelector('.row-responsavel').classList.remove('none');
            } else {
                document.querySelector('.row-responsavel').classList.add('none');
            }
        }

        btn.forEach(button => {
            button.addEventListener('click', (event) => {
                btn.forEach(bt => {
                    bt.classList.remove('active');
                });

                event.target.classList.add('active');
            })
        });
    </script>
</body>

</html>