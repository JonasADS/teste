<%@ page import="java.sql.*"%>
<%
Connection con=null;  
Statement stm=null;

try
{
    String serverName = "localhost:3306"; 
    String mydatabase = "inova"; //nome do banco de dados    
    String username = "root"; //login e senha do banco de dados
    String password = "12345";    
    String driverName = "com.mysql.jdbc.Driver";    
    Class.forName(driverName); //carregamos o driver do MySQL
    //preparando e abrindo a conexão com o banco de dados:
    String url = "jdbc:mysql://" + serverName + "/" + mydatabase; 
    con = DriverManager.getConnection(url, username, password);
    //criamos um objeto para executar comandos SQL:
    stm = con.createStatement();    
}
catch(SQLException ex)
{
  out.print("<p> Erro abrindo a conexão com o BD: verificar login/senha, nome do BD etc. em conecta.jsp. <br/>" + ex.getMessage() + "</p>");
}
%>