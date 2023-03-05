/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.SQLException;
import java.sql.ResultSet;

public class encuestas {
    
    private String respuesta = "";
    private String error = "";

    public encuestas() {

    }
       

    

    public String respuesta() {
        return this.respuesta;
    }
    
    

    public String ERROR() {
        return this.error;
    }

    public void agregarResp(String Resp) {
        base.cDatos conex = new base.cDatos();
        try {
            conex.conectar();
            ResultSet rsguarda = null;
            rsguarda = conex.consulta("call spGuardaRespuesta( '"+ Resp +"');");
            conex.cierraConexion();
        }
        catch (Exception error) {
            this.error=error.getMessage();
        }
    }

    public void agregarComent(String Coment) {
        base.cDatos conex = new base.cDatos();
        try {
            conex.conectar();
            ResultSet rsguarda = null;
            rsguarda = conex.consulta("call spGuardaComent( '"+ Coment +"');");
            conex.cierraConexion();
        }
        catch (Exception error) {
            this.error=error.getMessage();
        }
    }



    
}

