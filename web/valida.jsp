
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
<%
    clases.encuestas encuesta = new clases.encuestas();
    
    String coment = request.getParameter("comentario");
    String carateres = "'";
    boolean bueno = false;
    
    if (coment.length() == 0){
        coment = "";
        encuesta.agregarComent(coment);
        
        for(int i = 1; i < 22; i++){
                    String respuesta = request.getParameter("pregunta"+ i +"")== null?"ja":request.getParameter("pregunta"+ i +"");
                    bueno=false;
                    try  
                    {  
                      double num = Double.parseDouble(respuesta);  
                    }  
                    catch(NumberFormatException nope)  
                    {  
                      bueno = true;  
                    }   

                if (bueno){
                    if (respuesta.equals("ja")){
                        bueno = false; 
                        i=1000;
                    }
                    else{
                        bueno = true;
                    }
                }    
                else{
                    i=1000;
                }
            }

            if (bueno){
            for(int i = 1; i < 22; i++){
            String respuesta = request.getParameter("pregunta"+ i +"")== null?"ja":request.getParameter("pregunta"+ i +"");

              encuesta.agregarResp(respuesta);
            }
            response.sendRedirect(".");
            }
            else
            {
                response.sendRedirect(".");
            }
    }
    else{
        if ((coment.indexOf(carateres)) < 0) {
            encuesta.agregarComent(coment);
            
                    for(int i = 1; i < 22; i++){
                    String respuesta = request.getParameter("pregunta"+ i +"")== null?"ja":request.getParameter("pregunta"+ i +"");
                    bueno=false;
                    try  
                    {  
                      double num = Double.parseDouble(respuesta);  
                    }  
                    catch(NumberFormatException nope)  
                    {  
                      bueno = true;  
                    }   

                if (bueno){
                    if (respuesta.equals("ja")){
                        bueno = false; 
                        i=1000;
                    }
                    else{
                        bueno = true;
                    }
                }    
                else{
                    i=1000;
                }
            }

            if (bueno){
            for(int i = 1; i < 22; i++){
            String respuesta = request.getParameter("pregunta"+ i +"")== null?"ja":request.getParameter("pregunta"+ i +"");

              encuesta.agregarResp(respuesta);
            }
            response.sendRedirect(".");
            }
            else
            {
                response.sendRedirect(".");
            }
        
        }
        else{
          %>  
            <script type="text/javascript">  
                alert("No estan permitidos esos caracteres en los comentarios");
                document.location.href = "encuesta.jsp"
            </script>  
          <%
        }
    }
    
    
    
%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error</title>
    </head>
    <body>
        <h1>Ya, no bromas</h1>
    </body>
</html>
