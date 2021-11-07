<%@page import="java.nio.charset.StandardCharsets"%>
<%@page import="java.net.URLEncoder"%>
<%@ include file="conecta.jsp" %>
<%    
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%  
    if(request.getParameter("consultar_tipo").equals("1")){
    String sql, nome="", sobrenome="";
    int IDresp= 0;
    ResultSet rs=null;
    PreparedStatement pstm= null;
    
    try {
        sql = "SELECT * FROM tb_aluno WHERE id_Aluno = ?";
        
        pstm = con.prepareStatement(sql);
        
        pstm.setString(1, request.getParameter("id_usuario"));
        
        rs= pstm.executeQuery();
        
        if(rs.next()) {
            nome=rs.getString("Nome");            
            sobrenome=rs.getString("Sobrenome");
            IDresp = rs.getInt("id_Responsavel");
          

            
    String nomeEncoded = URLEncoder.encode(nome, StandardCharsets.UTF_8.toString());        
    String sbEncoded = URLEncoder.encode(sobrenome, StandardCharsets.UTF_8.toString());
    String dst = "painel-administrador-consultar.jsp?nome=" + nomeEncoded 
            + "&sobrenome=" + sbEncoded + "&idResp=" + IDresp;
    response.sendRedirect(dst);
        }
        else{
        response.sendRedirect("painel-administrador-consultar.jsp?dados=erro");
        }

    } catch (SQLException ex) {
        response.sendRedirect("painel-administrador-consultar.jsp?dados=erro");
    } 
    finally { //parte finally, sempre será executada
        if (rs != null) rs.close();
        if (pstm != null) pstm.close();
        if (con != null) con.close();
    }
    //para permitir caracteres especiais do nome do aluno na URL:

}

    else if(request.getParameter("consultar_tipo").equals("2")){
    
    String sql, nome="", sobrenome="";
    ResultSet rs=null;
    PreparedStatement pstm= null;
    
    try {
        sql = "SELECT * FROM tb_professor WHERE id_Professor = ?";
        
        pstm = con.prepareStatement(sql);
        
        pstm.setString(1, request.getParameter("id_usuario"));
        
        rs= pstm.executeQuery();
        
        if(rs.next()) {
            nome=rs.getString("Nome");            
            sobrenome=rs.getString("Sobrenome");
            
            
    String nomeEncoded = URLEncoder.encode(nome, StandardCharsets.UTF_8.toString());        
    String sbEncoded = URLEncoder.encode(sobrenome, StandardCharsets.UTF_8.toString());
    String dst = "painel-administrador-consultar.jsp?nome=" + nomeEncoded + "&sobrenome=" + sbEncoded;
    response.sendRedirect(dst);
        }
        else{
        response.sendRedirect("painel-administrador-consultar.jsp?dados=erro");
        }

    } catch (SQLException ex) {
        response.sendRedirect("painel-administrador-consultar.jsp?dados=erro");
    } 
    finally { //parte finally, sempre será executada
        if (rs != null) rs.close();
        if (pstm != null) pstm.close();
        if (con != null) con.close();
    }
        }
    

       else if(request.getParameter("consultar_tipo").equals("3")){
    
    String sql, nome="", sobrenome="";
    ResultSet rs=null;
    PreparedStatement pstm= null;
    
    try {
        sql = "SELECT * FROM tb_responsavel WHERE id_Responsavel = ?";
        
        pstm = con.prepareStatement(sql);
        
        pstm.setString(1, request.getParameter("id_usuario"));
        
        rs= pstm.executeQuery();
        
        if(rs.next()) {
            nome=rs.getString("Nome");            
            sobrenome=rs.getString("Sobrenome");
            
            
    String nomeEncoded = URLEncoder.encode(nome, StandardCharsets.UTF_8.toString());        
    String sbEncoded = URLEncoder.encode(sobrenome, StandardCharsets.UTF_8.toString());
    String dst = "painel-administrador-consultar.jsp?nome=" + nomeEncoded + "&sobrenome=" + sbEncoded;
    response.sendRedirect(dst);
        }
        else{
        response.sendRedirect("painel-administrador-consultar.jsp?dados=erro");
        }

    } catch (SQLException ex) {
        response.sendRedirect("painel-administrador-consultar.jsp?dados=erro");
    }  
    finally { //parte finally, sempre será executada
        if (rs != null) rs.close();
        if (pstm != null) pstm.close();
        if (con != null) con.close();
    }
        }
       else{
           response.sendRedirect("painel-administrador-consultar.jsp");
       }
%>
    </body>
</html>
