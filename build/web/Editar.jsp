<%-- 
    Document   : Editar
    Created on : 25/10/2021, 17:26:21
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="conecta.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%  

    if(request.getParameter("tipo_usuario").equals("1")){
        
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            
            String sql = "";
            
            String ID = request.getParameter("id_usuario");
            String nome = request.getParameter("nome");
            String sbNome = request.getParameter("sobrenome");
            String idResp = request.getParameter("id_responsavel"); 
            
            PreparedStatement pstm= null;
                     
            try {                 
                                    
                sql = "UPDATE tb_aluno SET id_Aluno= ?, Nome= ?, Sobrenome= ?, id_Responsavel= ?  WHERE id_Aluno= ?";

               pstm = con.prepareStatement(sql);
                    //out.print("<p>" +ID+ ", " +nome+ ", " + sbNome + "</p>");
                
                pstm.setString(1, ID);
                pstm.setString(2, nome);
                pstm.setString(3, sbNome);
                pstm.setString(4, idResp);
                pstm.setString(5, ID);
                //chamamos o método para gravar dados no banco
                int retorno = pstm.executeUpdate();
                if (retorno > 0) {
                    response.sendRedirect("painel-administrador-editar.jsp?suc=suc");
                    
                } else {
                    response.sendRedirect("painel-administrador-editar.jsp?erro=erro");
                }
            } catch (Exception ex) {
                    response.sendRedirect("painel-administrador-editar.jsp?erro=erro");
            }
            finally { //parte finally, sempre será executada
                if(pstm!=null)pstm.close();
                if(con!=null)con.close();                
            }
    //para permitir caracteres especiais do nome do aluno na URL:

}

    else if(request.getParameter("tipo_usuario").equals("2")){
    
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            
            String sql = "";
            
            String ID = request.getParameter("id_usuario");
            String nome = request.getParameter("nome");
            String sbNome = request.getParameter("sobrenome"); 
            
            PreparedStatement pstm= null;
                     
            try {                 
                                    
                sql = "UPDATE tb_professor SET id_Professor= ?, Nome= ?, Sobrenome= ? WHERE id_Professor= ?";

               pstm = con.prepareStatement(sql);
                    //out.print("<p>" +ID+ ", " +nome+ ", " + sbNome + "</p>");
                pstm.setString(1, ID);
                pstm.setString(2, nome);
                pstm.setString(3, sbNome);
                pstm.setString(4, ID);
                //chamamos o método para gravar dados no banco
                int retorno = pstm.executeUpdate();
                if (retorno > 0) {
                    response.sendRedirect("painel-administrador-editar.jsp?suc=suc");
                    
                } else {
                    response.sendRedirect("painel-administrador-editar.jsp?erro=erro");
                }
            } catch (Exception ex) {
                    response.sendRedirect("painel-administrador-editar.jsp?erro=erro");
            }
            finally { //parte finally, sempre será executada
                if(pstm!=null)pstm.close();
                if(con!=null)con.close();                
            }
 
        }
    

       else if(request.getParameter("tipo_usuario").equals("3")){

            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
            
            String sql = "";
            
            String ID = request.getParameter("id_usuario");
            String nome = request.getParameter("nome");
            String sbNome = request.getParameter("sobrenome"); 
            
            PreparedStatement pstm= null;
                     
            try {                 
                                    
                sql = "UPDATE tb_responsavel SET id_Responsavel= ?, Nome= ?, Sobrenome= ? WHERE id_Responsavel= ?";

               pstm = con.prepareStatement(sql);
                    //out.print("<p>" +ID+ ", " +nome+ ", " + sbNome + "</p>");
                pstm.setString(1, ID);
                pstm.setString(2, nome);
                pstm.setString(3, sbNome);
                pstm.setString(4, ID);
                //chamamos o método para gravar dados no banco
                int retorno = pstm.executeUpdate();
                if (retorno > 0) {
                    response.sendRedirect("painel-administrador-editar.jsp?suc=suc");
                    
                } else {
                    response.sendRedirect("painel-administrador-editar.jsp?erro=erro");
                }
            } catch (Exception ex) {
                    response.sendRedirect("painel-administrador-editar.jsp?erro=erro");
            }
            finally { //parte finally, sempre será executada
                if(pstm!=null)pstm.close();
                if(con!=null)con.close();                
            }
 
        }

        else{
           response.sendRedirect("painel-administrador-editar.jsp");
       }
%>
    </body>
</html>
