/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;
import ClaseConexion.ConexionPostgreSQL;
import encrypt.Encriptar;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 *
 * @author david
 */
public class AccesoDatos extends ConexionPostgreSQL{
    public static final String KEY = "92AE31A79FEEB2A3";
    public static final String IV = "0123456789ABCDEF";

    public boolean verificarUsuario(String correo, String campo) {
        String sql = "SELECT * FROM usuario where  " + campo + "= '" + correo + "' ;";
        PreparedStatement pst = null;
        ResultSet rs = null;
        boolean band = false;
        try {
            pst = getConnection().prepareStatement(sql);
            rs = pst.executeQuery();
            if (rs.next()) {
                band = true;
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (isConected()) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return band;
    }



    public String devolverUsuario(String correo) {
        String sentencia = "SELECT idusuario FROM usuario  WHERE  correo='" + correo + "';";
        String respuesta = "";
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            pst = getConnection().prepareStatement(sentencia);
            rs = pst.executeQuery();
            if (rs.next()) {
                respuesta = rs.getString(1);
            }
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (isConected()) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return respuesta;
    }
        public boolean modificarClave(String usuario, String clave) {
        PreparedStatement pst = null;
        boolean band = false;
        try {
            clave = Encriptar.encrypt(KEY, IV, clave);
            String sql = "UPDATE usuario ";
            sql = sql.concat("SET  contrasena='" + clave + "' ");
            sql = sql.concat("WHERE idusuario=" + usuario + ";");
            pst = getConnection().prepareStatement(sql);
            int val = pst.executeUpdate();
            if (val == 1) {
                band = true;
            }
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (isConected()) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return band;
    }
 public ArrayList<String> login(String clave, String usuario) {
       ArrayList<String> respuesta = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            clave = Encriptar.encrypt(KEY, IV, clave);
            String sentencia = "SELECT u.idusuario, tp.tipousuario,u.nombre,u.apellido FROM usuario as u inner join tipo_usuario as tp on u.cedula='" + usuario + "' and contrasena='" + clave + "' and u.id_tipousuario=tp.id_tipousuario ;";
            pst = getConnection().prepareStatement(sentencia);
            rs = pst.executeQuery();
             if (rs.next()) {
                respuesta.add(rs.getString(1));
                respuesta.add(rs.getString(2));
                respuesta.add(rs.getString(3));
                respuesta.add(rs.getString(4));
            }
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (isConected()) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return respuesta;
    }
    
 public boolean  CambiarClave(String usuario) {
        boolean respuesta=true;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            
            String sentencia = "SELECT count(*) FROM usuario  WHERE idusuario='" + usuario + "' and bandera is true;";
            pst = getConnection().prepareStatement(sentencia);
            rs = pst.executeQuery();
             
             if (rs.next()) {
                 if(rs.getInt(1)==0){
                  respuesta = false; }
            }
            
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (isConected()) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return respuesta;
    } 
 
   public boolean bandera(String usuario) {
        PreparedStatement pst = null;
        boolean band = false;
        try {
            
            String sql = "UPDATE usuario ";
            sql = sql.concat("SET  bandera=true ");
            sql = sql.concat("WHERE idusuario=" + usuario + ";");
            pst = getConnection().prepareStatement(sql);
            int val = pst.executeUpdate();
            if (val == 1) {
                band = true;
            }
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        } finally {
            try {
                if (isConected()) {
                    getConnection().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return band;
    }
 
 
}
