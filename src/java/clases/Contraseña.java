/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.SQLException;
import java.sql.ResultSet;

public class Contraseña {
    
    private String error = "";
    private String contraseña = "";
    private boolean valido = false;
    private int idUsr = 9;

    
    public Contraseña() {
        this.valido = false;
    }
    
    public boolean validacion(){
        return this.valido;
    }
    
    public boolean validacion2(int Usr){
        if (Usr == this.idUsr){
            this. valido= true;
            return this.valido;
        }
        else
        return this.valido;
    }
    
    public void buscarContra(String Contra) {
        base.cDatos conex = new base.cDatos();
        try {
            conex.conectar();
            ResultSet rsguarda = null;
            rsguarda = conex.consulta("call spBuscarContra( '"+ Contra +"');");
            if (rsguarda.next()){
                this.contraseña = rsguarda.getString(1);
                if(this.contraseña.equalsIgnoreCase("yep")){
                    this.valido = true;
                }
                else{
                    this.valido = false;
                }
            }    
            else{
                this.error="no, no te creo";
            }
        }
        catch (Exception error) {
            this.error=error.getMessage();
        }
    }
    
}
