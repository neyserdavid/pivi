/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ClaseConexion;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author david
 */
public class ConexionPostgreSQL {
    //DATOS PARA LA CONEXION
    String bd = "pivi";
    String user = "postgres";
    String password = "AdM1n321";
    String url = "jdbc:postgresql://localhost:5432/"+ bd +"";

    Connection connection;
    Statement statement;
    String message;
    ResultSet resultSet;
    
    //Constructor de clase que se conecta a la base de datoS
    public ConexionPostgreSQL() {

        //String urlDatabase = "jdbc:postgresql://localhost:5432/AutismoDB";
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(url, user, password);
            message = "ok";
        } catch (Exception e) {
            System.out.println("Ocurrio un error : " + e.getMessage());
            message = e.getMessage();
        }
        //System.out.println("La conexión se realizo sin problemas! =) ");
    }
     public void close() {
        try {
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception ex) {
            message = ex.getMessage();
        }
    }
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    public Connection ConexionPostgreSQLABD() {

        return connection;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }
    
       public boolean isConected() {
        try {
            if (connection == null) {
                return false;
            } else return !connection.isClosed();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionPostgreSQL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public ResultSet select(String sentence) {
        //ResultSet resultSet = null;

        if (message.equals("ok")) {
            try {
                statement = getConnection().createStatement();
                resultSet = statement.executeQuery(sentence);
            } catch (SQLException exSQL) {
                message = exSQL.getMessage();
            }
        }
        return resultSet;
    }

    public boolean accion(String sentence) {
        //ResultSet resultSet = null;
        boolean b = false;
        if (message.equals("ok")) {
            try {
                statement = getConnection().createStatement();
                statement.execute(sentence);
                b = true;
            } catch (SQLException exSQL) {
                b = false;
                message = exSQL.getMessage();
            }
        }
        return b;
    }
}
