

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="encuestass/encuesta.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Encuesta</title>
        <script>
            function regresar(){
                document.location.href = ".";
            }
            
            function submiteted(){
                alert('\t Encuesta enviada. \n \n \t Gracias por tomarte tu tiempo');
                
            }
                       
        </script>
    </head>
    <body class="bod2">
        <div class="principal2">
            <form action="valida.jsp" method="post" id="encuesta" onsubmit="submiteted()">
            <div class="sub">
                <input type="submit" class="elsub" value="Enviar">
            </div>
        </form>
        <div class="noprreg">
            
            <p class="cabeza">
                INSTITUTO POLITÉCNICO NACIONAL
            </p>
            <p class="cabeza">
                DEMS
            </p>
            <p class="cabezachi">
                Dirección de educación Media Superior
            </p>
            <p class="cabeza">
                Evaluación General de Alumnos
            </p>
            <p class="cabezach2">
                Su opinión es importante para la mejora de nuestro programa de induccion para alumnos</p> 
            <p class="cabezach2">de nuevo ingreso 2017 por lo que agradecemos responda el cuestionario siguiente:
            </p>
            
        </div>
        <br>
        <div class="instrucciones">
            
                <p class="instrucciones1">
                    Califique su nivel de stisfaccion deacuerdo a las siguientes afirmaciones:
                </p>
                    <p class="instrucciones2">
                    1 = Malo 2 = Regular 3 = Bueno 4 = Muy bueno 5 = Excelente
                    </p>
                
            
        </div>
        <br>
        <div id="preg1">
            <p id="p1"> 1° ¿Como fue el acompañamiento brindado? 
                <select name="pregunta1" form="encuesta"> 
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option>              
            </select></p>
        </div>
        
        <div>
            <p id="p2"> 2° ¿El grado de dominio de los temas fue?
                <select name="pregunta2" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select></p>
        </div>
        
        <div>
            <p id="p3"> 3° ¿La claridad de en la transmision de la informacion fue?
                <select name="pregunta3" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
        
        <div>
            <p id="p4"> 4° ¿Como fueron las actividades de participacion y socializacion?
                <select name="pregunta4" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
        
        <div>
            <p id="p5"> 5° ¿El trato por parte de los profesores y las autoridades fue?
                <select name="pregunta5" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
        
        <div>
            <p id="p6"> 6° ¿Los instrumentos y material utilizados fueron?
                <select name="pregunta6" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
       
        <div>
            <p id="p7"> 7° ¿Como fue la atencion de dudas sobre los temas?
                <select name="pregunta7" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
        
        <div>
            <p id="p8"> 8° ¿Como calificas la explicacion acerca de tus dudas?
                <select name="pregunta8" form="encuesta">
                <option value="malo">1</option>
                <option value="regular">2</option>
                <option value="bueno">3</option>
                <option value="muy bueno">4</option>
                <option value="excelente">5</option>
            </select> </p>
        </div>
        
        <div>
            <p id="p9"> 9° ¿Como fue la planeacion y distribucion del tiempo?
                <select name="pregunta9" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
        
        <div>
            <p id="p10"> 10° ¿Como consideras que fue la organizacion del curso de induccion?
                <select name="pregunta10" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
        
        <div>
            <p id="p11"> 11° ¿Como calificas la informacion proporcionada?
                <select name="pregunta11" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
        
        <div>
            <p id="p12"> 12° ¿Como fue la duracion del curso?
                <select name="pregunta12" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
        
        <div>
            <p id="p13"> 13° ¿La higiene, iluminacion, ventilacion y mobiliario de las intalaciones fueron?
                <select name="pregunta13" form="encuesta">
                <option value="excelente">5</option>
                <option value="muy bueno">4</option>
                <option value="bueno">3</option>
                <option value="regular">2</option>
                <option value="malo">1</option> 
            </select> </p>
        </div>
        <br><br>
        <div>
            <p id="p14"> 14° ¿Se llevo a cabo un recorrido por las instalaciones de la unidad academica?
                <select name="pregunta14" form="encuesta">
                <option value="si">si</option>
                <option value="no">no</option>
            </select> </p>
        </div>
            <p id="p15"> 15° ¿Sabes cuales son los valores del Instituto Politecnico Nacional?
                <select name="pregunta15" form="encuesta">
                <option value="si">si</option>
                <option value="no">no</option>
            </select> </p>
        <div>
            <p id="p16"> 16° ¿Te dieron a conocer los programas y planes de estudio existentes?
                <select name="pregunta16" form="encuesta">
                <option value="si">si</option>
                <option value="no">no</option>
            </select> </p>
        </div>
        
        <div>
            <p id="p17"> 17° ¿Conociste tus derechos y obligaciones del Instituto?
                <select name="pregunta17" form="encuesta">
                <option value="si">si</option>
                <option value="no">no</option>
            </select> </p>
        </div>
        
        <div>
            <p id="p18"> 18° ¿Te informaron de los servicios y actividades de tu escuela?
                <select name="pregunta18" form="encuesta">
                <option value="si">si</option>
                <option value="no">no</option>
            </select> </p>
        </div>
        
            <div>
            <p id="p19"> 19° ¿Se convoco a tu padre o tutor para asistir a la platica informativa?
                <select name="pregunta19" form="encuesta">
                <option value="si">si</option>
                <option value="no">no</option>
            </select> </p>
        </div>
            
            <div>
            <p id="p20"> 20° ¿El curso y la informacion proporcionada cumplieron tus expectativas?
                <select name="pregunta20" form="encuesta">
                <option value="si">si</option>
                <option value="no">no</option>
            </select> </p>
        </div>
            
            <div>
            <p id="p21"> 21° La informacion proporcionada motivo y desperto tu interes
                <select name="pregunta21" form="encuesta">
                <option value="si">si</option>
                <option value="no">no</option>
            </select> </p>
        </div>
            
            <div>
            <p class="comen"> Algun Comentario</p>
            <center><input type="text" form="encuesta" name='comentario' class='coment'></center>
        </div>                    
            
    </div>

        <div class="regresar">
            <img src="encuestass/img/arrowb.png" onclick="regresar()" class='regre' alt='regresar'>
        </div>
        
        <div class="ipn">
            <img src="encuestass/img/ipn.png" class='ipns'>
        </div>
    <div class="dems">
            <img src="encuestass/img/dems.png" class='demss' >
        </div>
    </body>
</html>
