<%-- 
    Document   : validaContra
    Created on : Jul 3, 2017, 1:55:24 AM
    Author     : Sonia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
   String contra = request.getParameter("contra");
   String carateres = "'";
   int carac = contra.indexOf(carateres);
   boolean correcto = false;
   
    clases.Contraseña contraseña = new clases.Contraseña();
    
    if (contra.length() == 0){
        response.sendRedirect(".");
    }
    else{
        if (carac < 0) {
            contraseña.buscarContra(contra);
            correcto = contraseña.validacion();
                if(correcto){
                    
                    HttpSession xSes = request.getSession(true);
        
                    xSes.setAttribute("idUsr", 9);
        
                    response.sendRedirect("grafica.jsp");
                    
                    
                }
                else{
                    response.sendRedirect(".");
                }
        }
        else{
            response.sendRedirect(".");
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello you! No deberias de poder ver esto! yay!</h1>
    </body>
</html>
