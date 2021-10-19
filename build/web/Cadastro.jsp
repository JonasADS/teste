<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conecta.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Aluno inserido no BD</title>
        <link rel="stylesheet" href="estilos.css" type="text/css" />
    </head>
    <body>
       <h2>Aluno inserido no BD </h2>
           
        <%            
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            String sql = "";
            PreparedStatement pstm= null;
            
            //Cadastro Aluno
            if(request.getParameter("cadastrar_tipo").equals("1")){
            try {
                
                
                //Comando SQL para inserir um novo registro no BD:
                
                sql = "INSERT INTO tb_aluno (id_Aluno,Nome,Sobrenome,id_Responsavel) VALUES (?,?,?,?)";
                //chamamos o método para gravar dados no banco
                pstm = con.prepareStatement(sql);
                
                pstm.setString(1, request.getParameter("id_aluno"));
                pstm.setString(2, request.getParameter("nome"));
                pstm.setString(3, request.getParameter("sobrenome"));
                pstm.setString(4, request.getParameter("id_responsavel"));
                                 
                
                int retorno = pstm.executeUpdate();
              
                if (retorno > 0) {                    
                    response.sendRedirect("painel-administrador.jsp?dadosSuc=DADOS GRAVADOS COM SUCESSO");
                } else {                    
                    response.sendRedirect("painel-administrador.jsp?dadosErro=ERRO! Verifique os dados digitados");
                }
            } catch (Exception ex) {
                //out.print("Error: " + ex.getMessage());
                response.sendRedirect("painel-administrador.jsp?dadosErro2=ERRO");
            }
            finally { //parte finally, sempre será executada
                if(stm!=null)stm.close();
                if(con!=null)con.close();                
            }
            
}        
            //Cadastro Professor
            else if(request.getParameter("cadastrar_tipo").equals("2")){
            try {
                String nome = request.getParameter("nome");
                String sbNome = request.getParameter("sobrenome");
                
                    if (nome != null) {
                        //Comando SQL para inserir um novo registro no BD:

                        sql = "INSERT INTO tb_professor (Nome,Sobrenome) VALUES (?,?)";
                        //chamamos o método para gravar dados no banco
                        pstm = con.prepareStatement(sql);

                        pstm.setString(1, request.getParameter("nome"));
                        pstm.setString(2, request.getParameter("sobrenome"));

                        int retorno = pstm.executeUpdate();

                        if (retorno > 0) {
                            response.sendRedirect("painel-administrador.jsp?dadosSuc=DADOS GRAVADOS COM SUCESSO");
                        } else {
                            response.sendRedirect("painel-administrador.jsp?dadosErro=ERRO! Verifique os dados digitados");
                        }
                    }
                    else{
                       response.sendRedirect("painel-administrador.jsp?dadosErro=ERRO! Verifique os dados digitados");
                    }
                
            } catch (Exception ex) {
                //out.print("Error: " + ex.getMessage());
                response.sendRedirect("painel-administrador.jsp?dadosErro2=ERRO! Falha na conexão");
            }
            finally { //parte finally, sempre será executada
                if(stm!=null)stm.close();
                if(con!=null)con.close();                
            }
            }
            
            else if(request.getParameter("cadastrar_tipo").equals("3")){
            try {
                String nome = request.getParameter("nome");
                String sbNome = request.getParameter("sobrenome");
                
                   
                        //Comando SQL para inserir um novo registro no BD:

                        sql = "INSERT INTO tb_responsavel (Nome,Sobrenome) VALUES (?,?)";
                        //chamamos o método para gravar dados no banco
                        pstm = con.prepareStatement(sql);

                        pstm.setString(1, request.getParameter("nome"));
                        pstm.setString(2, request.getParameter("sobrenome"));

                        int retorno = pstm.executeUpdate();

                        if (retorno > 0) {
                            response.sendRedirect("painel-administrador.jsp?dadosSuc=DADOS GRAVADOS COM SUCESSO");
                        } else {
                            response.sendRedirect("painel-administrador.jsp?dadosErro=ERRO! Verifique os dados digitados");
                        }                    
            
                
            } catch (Exception ex) {
                //out.print("Error: " + ex.getMessage());
                response.sendRedirect("painel-administrador.jsp?dadosErro2=ERRO! Falha na conexão");
            }
            finally { //parte finally, sempre será executada
                if(stm!=null)stm.close();
                if(con!=null)con.close();                
            }
           }
          
        %>
        
    
    </body>
    <br/><br/>
    <a href="index.html">Voltar</a> para a página inicial.    
</html>