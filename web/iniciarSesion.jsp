<%-- 
    Document   : iniciarSesion
    Created on : Jul 3, 2017, 1:47:04 AM
    Author     : Sonia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="encuestass/encuesta.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar sesion</title>
        <script>
            function regresar(){
                document.location.href = ".";
            }            
        </script>
    </head>
    <body class="bod">
        <div class="principal">
            <div><h1><center>Ingrese la contraseña</center></h1></div>
        
            <br><br><br>
        
        <div>
            
           <form action="validaContra.jsp" method="post" id="encuesta">
               <div class="sub2">
                <center>
                    <input type="password" placeholder="Contraseña" name='contra' class='pass'><br><br>
                <input type="submit" class="elsub" value="Enviar">
                </center>
            </div>               
        </form>
            
        </div>
    </div>
        <div class="ipn">
            <img src="encuestass/img/ipn.png" class='ipns'>
        </div>
    <div class="dems">
            <img src="encuestass/img/dems.png" class='demss' >
        </div><div class="ipn">
            <img src="encuestass/img/ipn.png" class='ipns'>
        </div>
    <div class="dems">
            <img src="encuestass/img/dems.png" class='demss' >
        </div>
    <div class="regresarch">
            <img src="encuestass/img/arrowb.png" onclick="regresar()" class='regrech' alt='regresar'>
        </div>
    </body>
</html>
