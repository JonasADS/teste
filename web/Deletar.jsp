<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conecta.jsp" %>
<%   
 
    if(request.getParameter("tipo_usuario").equals("1")){
        
        String sql;
    try {
        sql = "DELETE FROM tb_aluno WHERE id_Aluno = ?";
      
        PreparedStatement pstm= null;
        pstm= con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("ID_Usuario"));     
        
        int ret = pstm.executeUpdate();

            if (ret > 0) {
                response.sendRedirect("painel-administrador-deletar.jsp?suc=suc");
            }
            else{
                response.sendRedirect("painel-administrador-deletar.jsp?erro=erro");
            }

        

    } catch (SQLException ex) {
        response.sendRedirect("painel-administrador-deletar.jsp?erro=erro");
    } 
    finally { //parte finally, sempre será executada
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
    
    //response.sendRedirect("listarAlunos.jsp");
    //para permitir caracteres especiais do nome do aluno na URL:

}

    else if(request.getParameter("tipo_usuario").equals("2")){
    
        String sql;
    try {
        sql = "DELETE FROM tb_professor WHERE id_Professor = ?";
      
        PreparedStatement pstm= null;
        pstm= con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("ID_Usuario"));     
        
        int ret = pstm.executeUpdate();

            if (ret > 0) {
                response.sendRedirect("painel-administrador-deletar.jsp?suc=suc");
            }
            else{
                response.sendRedirect("painel-administrador-deletar.jsp?erro=erro");
            }        

    } catch (SQLException ex) {
        response.sendRedirect("painel-administrador-deletar.jsp?erro=erro");
    }  
    finally { //parte finally, sempre será executada
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
        }
    

       else if(request.getParameter("tipo_usuario").equals("3")){
    
        String sql;
    try {
        sql = "DELETE FROM tb_Responsavel WHERE id_Responsavel = ?";
      
        PreparedStatement pstm= null;
        pstm= con.prepareStatement(sql);
        pstm.setString(1, request.getParameter("ID_Usuario"));     
        
        int ret = pstm.executeUpdate();

            if (ret > 0) {
                response.sendRedirect("painel-administrador-deletar.jsp?suc=suc");
            }
            else{
                response.sendRedirect("painel-administrador-deletar.jsp?erro=erro");
            }        

    } catch (SQLException ex) {
        response.sendRedirect("painel-administrador-deletar.jsp?erro=erro");
    }  
    finally { //parte finally, sempre será executada
        if (stm != null) stm.close();
        if (con != null) con.close();
    }
  }
%>