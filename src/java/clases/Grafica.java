package clases;

import java.sql.SQLException;
import java.sql.ResultSet;

public class Grafica {
    private int malo = 0;
    private int regular = 0;
    private int bueno = 0;
    private int muyBueno = 0;
    private int excelente = 0;
    private int si = 0;
    private int no = 0;
    private String error = "";

    public Grafica() {

    }
       

    

    public int malo() {
        return this.malo;
    }
    
    public int regular() {
        return this.regular;
    }
    
    public int bueno() {
        return this.bueno;
    }
    
    public int muyBueno() {
        return this.muyBueno;
    }
    
    public int excelente() {
        return this.excelente;
    }
    
    public int si() {
        return this.si;
    }
    
    public int no() {
        return this.no;
    }

    public String ERROR() {
        return this.error;
    }

    public void buscarResp(int preg) {
        base.cDatos conex = new base.cDatos();
        try {
            conex.conectar();
            ResultSet rsguarda = null;
            rsguarda = conex.consulta("call spBuscarRespuesta( "+ preg +");");
            if (rsguarda.next()){
                this.malo = rsguarda.getInt(1);
                this.regular = rsguarda.getInt(2);
                this.bueno = rsguarda.getInt(3);
                this.muyBueno = rsguarda.getInt(4);
                this.excelente = rsguarda.getInt(5);
                this.si = rsguarda.getInt(6);
                this.no = rsguarda.getInt(7);
            }    
            else{
                this.error="no, pues no conecta";
            }
        }
        catch (Exception error) {
            this.error=error.getMessage();
        }
    }
}
