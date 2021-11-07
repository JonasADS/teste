<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             
        <% 
            Connection con=null;
            PreparedStatement pstm= null;
            try{
            String serverName= "localhost:3306";
            String dataBase= "inova";
            String userName= "root";
            String password= "12345";
            String driverName = "com.mysql.jdbc.Driver";
            Class.forName(driverName);
            
            String url = "jdbc:mysql://" + serverName + "/" + dataBase;
            
            con= DriverManager.getConnection(url,userName,password);
            }

            catch(SQLException ex){
                out.print(ex.getMessage());
            }
            %>
            
            <%
                //USUÁRIO ALUNO
                if(request.getParameter("tipo_usuario").equals("1")){
                  
                String sql;
                ResultSet rs= null;
                
                try{
                 sql= "SELECT nome FROM tb_aluno WHERE login= ? and senha= ?";
                 pstm = con.prepareStatement(sql);
                 pstm.setString(1, request.getParameter("Login"));
                 pstm.setString(2, request.getParameter("entradaSenha"));
                 rs = pstm.executeQuery();
                 
                 if(rs.next()){
                     {                    
                     session.setAttribute("nomeAl", rs.getString("nome"));
                     response.sendRedirect("area-do-aluno-notas.jsp");
                     }
                 }
                 
                else{
                    response.sendRedirect("minha-area.jsp?incorreto=Erro");
                }
                 }
                catch(SQLException ex1) {
                     out.print(ex1.getMessage());
                }
                rs.close(); pstm.close(); con.close();
              }
              
                
                //USUÁRIO PROFESSOR
                if(request.getParameter("tipo_usuario").equals("2")){
                  
                String sql;
                ResultSet rs= null;
                
                try{
                 sql= "SELECT nome FROM tb_professor WHERE login= ? and senha= ?";
                 pstm = con.prepareStatement(sql);
                 pstm.setString(1, request.getParameter("Login"));
                 pstm.setString(2, request.getParameter("entradaSenha"));
                 rs = pstm.executeQuery();
                 
                 if(rs.next()){
                     {                    
                     session.setAttribute("nomeP", rs.getString("nome"));
                     response.sendRedirect("area-do-professor-notas.jsp");
                     }
                 }
                 
                else{
                    response.sendRedirect("minha-area.jsp?incorreto=Erro");
                }
                 }
                catch(SQLException ex1) {
                     out.print(ex1.getMessage());
                }
                rs.close(); pstm.close(); con.close();
              }
              //USUÁRIO ADMINISTRADOR
                else if(request.getParameter("tipo_usuario").equals("3")){
                  
                String sql;
                ResultSet rs= null;
                
                try{
                 sql= "SELECT nome FROM tb_administrador WHERE login= ? and senha= ?";
                 pstm = con.prepareStatement(sql);
                 pstm.setString(1, request.getParameter("Login"));
                 pstm.setString(2, request.getParameter("entradaSenha"));
                 rs = pstm.executeQuery();
                 
                 if(rs.next()){
                     {                    
                     session.setAttribute("NomeAdm", rs.getString("nome"));
                     response.sendRedirect("painel-administrador-cadastrar.jsp");
                     }
                 }
                 
                else{
                    response.sendRedirect("minha-area.jsp?incorreto=Erro");
                }
                 }
                catch(SQLException ex1) {
                     out.print(ex1.getMessage());
                }
                rs.close(); pstm.close(); con.close();
              }
              
              else if(request.getParameter("tipo_usuario").equals("")){
                    response.sendRedirect("minha-area.jsp?tipoIncorreto=Erro");
                }
            %>                     
            }
    </body>
</html>
