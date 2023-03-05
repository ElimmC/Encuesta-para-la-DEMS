<%-- 
    Document   : grafica
    Created on : Jun 28, 2017, 1:11:52 PM
    Author     : Sonia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%
    HttpSession xSes = request.getSession();
    
    String idUsr = "0";

    if(xSes.getAttribute("idUsr") != null){

    idUsr = (String) xSes.getAttribute("idUsr").toString();

    }

    clases.Contraseña paso = new clases.Contraseña();
    if(!paso.validacion2(Integer.parseInt(idUsr))){
        response.sendRedirect(".");
    }


%>
<!DOCTYPE html>
<html>
  <head>
      <link rel="stylesheet" href="encuestass/grraficass.css" type="text/css"/>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      
        <%clases.Grafica grafica = new clases.Grafica();
        
          int[] malo = new int[13];  
          int[] regular = new int[13];
          int[] bueno = new int[13];  
          int[] muyBueno = new int[13];
          int[] excelente = new int[13];  
          int[] sip = new int[8];
          int[] nope = new int[8];  
          
          for (int i = 0; i < 21; i++){
              grafica.buscarResp((i+1));
              if(i<13){
                malo[i] = grafica.malo();
                regular[i] = grafica.regular();
                bueno[i] = grafica.bueno();
                muyBueno[i] = grafica.muyBueno();
                excelente[i] = grafica.excelente();
              }
              else{
                 nope[i-13] = grafica.no();
                 sip[i-13] = grafica.si();
              }
          }
          
          for(int i=0; i<21; i++){
              if(i<13){
              request.setAttribute("malo"+i+"", malo[i]);
              request.setAttribute("regular"+i+"", regular[i]);
              request.setAttribute("bueno"+i+"", bueno[i]);
              request.setAttribute("muyBueno"+i+"", muyBueno[i]);
              request.setAttribute("excelente"+i+"", excelente[i]);
              }
              else{
              request.setAttribute("sip"+(i-13)+"", sip[i-13]);
              request.setAttribute("nope"+(i-13)+"", nope[i-13]);
              }
          }
        %>
          
          var malo0 = parseInt("<%= request.getAttribute("malo0") %>");
          var malo1 = parseInt("<%= request.getAttribute("malo1") %>");  
          var malo2 = parseInt("<%= request.getAttribute("malo2") %>"); 
          var malo3 = parseInt("<%= request.getAttribute("malo3") %>"); 
          var malo4 = parseInt("<%= request.getAttribute("malo4") %>"); 
          var malo5 = parseInt("<%= request.getAttribute("malo5") %>"); 
          var malo6 = parseInt("<%= request.getAttribute("malo6") %>"); 
          var malo7 = parseInt("<%= request.getAttribute("malo7") %>"); 
          var malo8 = parseInt("<%= request.getAttribute("malo8") %>"); 
          var malo9 = parseInt("<%= request.getAttribute("malo9") %>"); 
          var malo10 = parseInt("<%= request.getAttribute("malo10") %>"); 
          var malo11 = parseInt("<%= request.getAttribute("malo11") %>"); 
          var malo12 = parseInt("<%= request.getAttribute("malo12") %>");
          
          
           
          
          var regular0 = parseInt("<%= request.getAttribute("regular0") %>");
          var regular1 = parseInt("<%= request.getAttribute("regular1") %>"); 
          var regular2 = parseInt("<%= request.getAttribute("regular2") %>");
          var regular3 = parseInt("<%= request.getAttribute("regular3") %>");
          var regular4 = parseInt("<%= request.getAttribute("regular4") %>");
          var regular5 = parseInt("<%= request.getAttribute("regular5") %>");
          var regular6 = parseInt("<%= request.getAttribute("regular6") %>");
          var regular7 = parseInt("<%= request.getAttribute("regular7") %>");
          var regular8 = parseInt("<%= request.getAttribute("regular8") %>");
          var regular9 = parseInt("<%= request.getAttribute("regular9") %>");
          var regular10 = parseInt("<%= request.getAttribute("regular10") %>");
          var regular11 = parseInt("<%= request.getAttribute("regular11") %>");
          var regular12 = parseInt("<%= request.getAttribute("regular12") %>");
     
          
          var bueno0 = parseInt("<%= request.getAttribute("bueno0") %>"); 
          var bueno1 = parseInt("<%= request.getAttribute("bueno1") %>"); 
          var bueno2 = parseInt("<%= request.getAttribute("bueno2") %>"); 
          var bueno3 = parseInt("<%= request.getAttribute("bueno3") %>"); 
          var bueno4 = parseInt("<%= request.getAttribute("bueno4") %>"); 
          var bueno5 = parseInt("<%= request.getAttribute("bueno5") %>"); 
          var bueno6 = parseInt("<%= request.getAttribute("bueno6") %>"); 
          var bueno7 = parseInt("<%= request.getAttribute("bueno7") %>"); 
          var bueno8 = parseInt("<%= request.getAttribute("bueno8") %>"); 
          var bueno9 = parseInt("<%= request.getAttribute("bueno9") %>"); 
          var bueno10 = parseInt("<%= request.getAttribute("bueno10") %>"); 
          var bueno11 = parseInt("<%= request.getAttribute("bueno11") %>"); 
          var bueno12 = parseInt("<%= request.getAttribute("bueno12") %>");           
        
          var muyBueno0 = parseInt("<%= request.getAttribute("muyBueno0") %>");   
          var muyBueno1 = parseInt("<%= request.getAttribute("muyBueno1") %>"); 
          var muyBueno2 = parseInt("<%= request.getAttribute("muyBueno2") %>"); 
          var muyBueno3 = parseInt("<%= request.getAttribute("muyBueno3") %>"); 
          var muyBueno4 = parseInt("<%= request.getAttribute("muyBueno4") %>"); 
          var muyBueno5 = parseInt("<%= request.getAttribute("muyBueno5") %>"); 
          var muyBueno6 = parseInt("<%= request.getAttribute("muyBueno6") %>"); 
          var muyBueno7 = parseInt("<%= request.getAttribute("muyBueno7") %>"); 
          var muyBueno8 = parseInt("<%= request.getAttribute("muyBueno8") %>"); 
          var muyBueno9 = parseInt("<%= request.getAttribute("muyBueno9") %>"); 
          var muyBueno10 = parseInt("<%= request.getAttribute("muyBueno10") %>"); 
          var muyBueno11 = parseInt("<%= request.getAttribute("muyBueno11") %>"); 
          var muyBueno12 = parseInt("<%= request.getAttribute("muyBueno12") %>"); 
          
          var excelente0 = parseInt("<%= request.getAttribute("excelente0") %>");
          var excelente1 = parseInt("<%= request.getAttribute("excelente1") %>");   
          var excelente2 = parseInt("<%= request.getAttribute("excelente2") %>"); 
          var excelente3 = parseInt("<%= request.getAttribute("excelente3") %>"); 
          var excelente4 = parseInt("<%= request.getAttribute("excelente4") %>"); 
          var excelente5 = parseInt("<%= request.getAttribute("excelente5") %>"); 
          var excelente6 = parseInt("<%= request.getAttribute("excelente6") %>"); 
          var excelente7 = parseInt("<%= request.getAttribute("excelente7") %>"); 
          var excelente8 = parseInt("<%= request.getAttribute("excelente8") %>"); 
          var excelente9 = parseInt("<%= request.getAttribute("excelente9") %>"); 
          var excelente10 = parseInt("<%= request.getAttribute("excelente10") %>"); 
          var excelente11 = parseInt("<%= request.getAttribute("excelente11") %>"); 
          var excelente12 = parseInt("<%= request.getAttribute("excelente12") %>");  
          
          var si0 = parseInt("<%= request.getAttribute("sip0") %>");
          var si1 = parseInt("<%= request.getAttribute("sip1") %>");
          var si2 = parseInt("<%= request.getAttribute("sip2") %>");
          var si3 = parseInt("<%= request.getAttribute("sip3") %>");
          var si4 = parseInt("<%= request.getAttribute("sip4") %>");
          var si5 = parseInt("<%= request.getAttribute("sip5") %>");
          var si6 = parseInt("<%= request.getAttribute("sip6") %>");
          var si7 = parseInt("<%= request.getAttribute("sip7") %>");
          
          var no0 = parseInt("<%= request.getAttribute("nope0") %>");
          var no1 = parseInt("<%= request.getAttribute("nope1") %>");
          var no2 = parseInt("<%= request.getAttribute("nope2") %>");
          var no3 = parseInt("<%= request.getAttribute("nope3") %>");
          var no4 = parseInt("<%= request.getAttribute("nope4") %>");
          var no5 = parseInt("<%= request.getAttribute("nope5") %>");
          var no6 = parseInt("<%= request.getAttribute("nope6") %>");
          var no7 = parseInt("<%= request.getAttribute("nope7") %>");
          
            

          
          
      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);
      google.charts.setOnLoadCallback(drawChart2);
      google.charts.setOnLoadCallback(drawChart3);
      google.charts.setOnLoadCallback(drawChart4);
      google.charts.setOnLoadCallback(drawChart5);
      google.charts.setOnLoadCallback(drawChart6);
      google.charts.setOnLoadCallback(drawChart7);
      google.charts.setOnLoadCallback(drawChart8);
      google.charts.setOnLoadCallback(drawChart9);
      google.charts.setOnLoadCallback(drawChart10);
      google.charts.setOnLoadCallback(drawChart11);
      google.charts.setOnLoadCallback(drawChart12);
      google.charts.setOnLoadCallback(drawChart13);
      google.charts.setOnLoadCallback(drawChart14);
      google.charts.setOnLoadCallback(drawChart15);
      google.charts.setOnLoadCallback(drawChart16);
      google.charts.setOnLoadCallback(drawChart17);
      google.charts.setOnLoadCallback(drawChart18);
      google.charts.setOnLoadCallback(drawChart19);
      google.charts.setOnLoadCallback(drawChart20);
      google.charts.setOnLoadCallback(drawChart21);
      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo0],
          ['Regular', regular0],
          ['Bueno', bueno0],
          ['Muy Bueno', muyBueno0],
          ['Excelente', excelente0]
        ]);

        // Set chart options
        var options = {'title':'¿Como fue el acompañamiento brindado?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div1'));
        chart.draw(data, options);
    }
    
    function drawChart2() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo1],
          ['Regular', regular1],
          ['Bueno', bueno1],
          ['Muy Bueno', muyBueno1],
          ['Excelente', excelente1]
        ]);

        // Set chart options
        var options = {'title':'¿El grado de dominio de los temas fue?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
        chart.draw(data, options);
    }
    
    function drawChart3() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo2],
          ['Regular', regular2],
          ['Bueno', bueno2],
          ['Muy Bueno', muyBueno2],
          ['Excelente', excelente2]
        ]);

        // Set chart options
        var options = {'title':'¿La claridad de en la transmision de la informacion fue?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div3'));
        chart.draw(data, options);
    }
    
    function drawChart4() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo3],
          ['Regular', regular3],
          ['Bueno', bueno3],
          ['Muy Bueno', muyBueno3],
          ['Excelente', excelente3]
        ]);

        // Set chart options
        var options = {'title':'¿Como fueron las actividades de participacion y socializacion?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div4'));
        chart.draw(data, options);
    }
    
    function drawChart5() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo4],
          ['Regular', regular4],
          ['Bueno', bueno4],
          ['Muy Bueno', muyBueno4],
          ['Excelente', excelente4]
        ]);

        // Set chart options
        var options = {'title':'¿El trato por parte de los profesores y las autoridades fue?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div5'));
        chart.draw(data, options);
    }
    
    function drawChart6() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo5],
          ['Regular', regular5],
          ['Bueno', bueno5],
          ['Muy Bueno', muyBueno5],
          ['Excelente', excelente5]
        ]);

        // Set chart options
        var options = {'title':'¿Los instrumentos y material utilizados fueron?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div6'));
        chart.draw(data, options);
    }
    
    function drawChart7() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo6],
          ['Regular', regular6],
          ['Bueno', bueno6],
          ['Muy Bueno', muyBueno6],
          ['Excelente', excelente6]
        ]);

        // Set chart options
        var options = {'title':'¿Como fue la atencion de dudas sobre los temas?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div7'));
        chart.draw(data, options);
    }
    
    function drawChart8() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo7],
          ['Regular', regular7],
          ['Bueno', bueno7],
          ['Muy Bueno', muyBueno7],
          ['Excelente', excelente7]
        ]);

        // Set chart options
        var options = {'title':'¿Como calificas la explicacion acerca de tus dudas?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div8'));
        chart.draw(data, options);
    }
    
    function drawChart9() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo8],
          ['Regular', regular8],
          ['Bueno', bueno8],
          ['Muy Bueno', muyBueno8],
          ['Excelente', excelente8]
        ]);

        // Set chart options
        var options = {'title':'¿Como fue la planeacion y distribucion del tiempo?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div9'));
        chart.draw(data, options);
    }
    
    function drawChart10() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo9],
          ['Regular', regular9],
          ['Bueno', bueno9],
          ['Muy Bueno', muyBueno9],
          ['Excelente', excelente9]
        ]);

        // Set chart options
        var options = {'title':'¿Como consideras que fue la organizacion del curso de induccion?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div10'));
        chart.draw(data, options);
    }
    
    function drawChart11() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo10],
          ['Regular', regular10],
          ['Bueno', bueno10],
          ['Muy Bueno', muyBueno10],
          ['Excelente', excelente10]
        ]);

        // Set chart options
        var options = {'title':'¿Como calificas la informacion proporcionada?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div11'));
        chart.draw(data, options);
    }
    
    function drawChart12() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo11],
          ['Regular', regular11],
          ['Bueno', bueno11],
          ['Muy Bueno', muyBueno11],
          ['Excelente', excelente11]
        ]);

        // Set chart options
        var options = {'title':'¿Como fue la duracion del curso?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div12'));
        chart.draw(data, options);
    }
    
    function drawChart13() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Malo', malo12],
          ['Regular', regular12],
          ['Bueno', bueno12],
          ['Muy Bueno', muyBueno12],
          ['Excelente', excelente12]
        ]);

        // Set chart options
        var options = {'title':'¿La higiene, iluminacion, ventilacion y mobiliario de las intalaciones fueron?',
                       'width':600,
                       'height':400};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div13'));
        chart.draw(data, options);
    }
    
    function drawChart14() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Si', si0],
          ['No', no0]
        ]);

        // Set chart options
        var options = {'title':'¿Se llevo a cabo un recorrido por las instalaciones de la unidad academica?',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div14'));
        chart.draw(data, options);
    }
    
    function drawChart15() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Si', si1],
          ['No', no1]
        ]);

        // Set chart options
        var options = {'title':'¿Sabes cuales son los valores del Instituto Politecnico Nacional?',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div15'));
        chart.draw(data, options);
    }
    
    function drawChart16() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Si', si2],
          ['No', no2]
        ]);

        // Set chart options
        var options = {'title':'¿Te dieron a conocer los programas y planes de estudio existentes?',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div16'));
        chart.draw(data, options);
    }
    
    function drawChart17() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Si', si3],
          ['No', no3]
        ]);

        // Set chart options
        var options = {'title':'¿Conociste tus derechos y obligaciones del Instituto?',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div17'));
        chart.draw(data, options);
    }
    
    function drawChart18() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Si', si4],
          ['No', no4]
        ]);

        // Set chart options
        var options = {'title':'¿Te informaron de los servicios y actividades de tu escuela?',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div18'));
        chart.draw(data, options);
    }
    
    function drawChart19() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Si', si5],
          ['No', no5]
        ]);

        // Set chart options
        var options = {'title':'¿Se convoco a tu padre o tutor para asistir a la platica informativa?',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div19'));
        chart.draw(data, options);
    }
    
    function drawChart20() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Si', si6],
          ['No', no6]
        ]);

        // Set chart options
        var options = {'title':'¿El curso y la informacion proporcionada cumplieron tus expectativas?',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div20'));
        chart.draw(data, options);
    }
    
    function drawChart21() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pregunta');
        data.addColumn('number', 'Respuestas');
        data.addRows([
          ['Si', si7],
          ['No', no7]
        ]);

        // Set chart options
        var options = {'title':'La informacion proporcionada motivo y desperto tu interes',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div21'));
        chart.draw(data, options);
    }
    
    function regresar(){
                document.location.href = ".";
            }
    
    </script>
  </head>

  <body class="bod3">
    <!--Div that will hold the pie chart-->
    <div class="principal3">
        <div id="chart_div1"></div>
        <div id="chart_div2"></div>
        <div id="chart_div3"></div>
        <div id="chart_div4"></div>
        <div id="chart_div5"></div>
        <div id="chart_div6"></div>
        <div id="chart_div7"></div>
        <div id="chart_div8"></div>
        <div id="chart_div9"></div>
        <div id="chart_div10"></div>
        <div id="chart_div11"></div>
        <div id="chart_div12"></div>
        <div id="chart_div13"></div>
        <div id="chart_div14"></div>
        <div id="chart_div15"></div>
        <div id="chart_div16"></div>
        <div id="chart_div17"></div>
        <div id="chart_div18"></div>
        <div id="chart_div19"></div>
        <div id="chart_div20"></div>
        <div id="chart_div21"></div>
    </div>
    <%-- <div class="regresar">
            <img src="encuestass/img/arrowb.png" onclick="regresar()" class='regre' alt='regresar'>
        </div>
    <div class="ipn">
            <img src="encuestass/img/ipn.png" class='ipns'>
        </div>
    <div class="dems">
            <img src="encuestass/img/dems.png" class='demss' >
</div>--%>
  </body>
</html>
        

