<html lang="en">
<head>
    <title>Document</title>
</head>
<body>
	<%@page import="java.sql.*"%>
    <%
        String usuario = request.getParameter("usuario");
        String pass = request.getParameter("pass");
        String redirectURL = "home.html";
        String errorURL = "error.html";
        Class.forName("com.mysql.jdbc.Driver");
        Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3305/solociencia","root","");
        try{
	        PreparedStatement consultaP = dbconect.prepareStatement("SELECT * FROM usuario WHERE usuario=? AND pass=?");
	        consultaP.setString(1,usuario);
	        consultaP.setString(2,pass);
	        ResultSet resultado = consultaP.executeQuery();
	        if(resultado.next())
	        	response.sendRedirect(redirectURL);
	        else
            response.sendRedirect(errorURL);
        }
        catch(Exception e){
        	out.print("ERROR");
        }
        %>
</body>
</html>