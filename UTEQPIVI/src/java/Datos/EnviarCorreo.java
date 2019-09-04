/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;
import java.util.Properties;
import java.util.Random;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
/**
 *
 * @author david
 */
public class EnviarCorreo {
     String miCorreo;
    String miPassword;
    String servidorSMTP;
    String puertoEnvio = "587";// puertoEnvio="587";//465 para mensajes normales y 587 con adjuntos
    String destinatarios;
    String asunto = "";
    String cuerpo = "";//cuerpo del mensaje
    int servidor;

    public static String random() {
        Random rnd = new Random();
        String abecedario = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String cadena = "";
        int m = 0, pos, num;
        while (m < 1) {
            pos = (int) (rnd.nextDouble() * abecedario.length() - 1 + 0);
            num = (int) (rnd.nextDouble() * 999999999 + 1000000000);
            cadena = cadena + abecedario.charAt(pos) + num;
            pos = (int) (rnd.nextDouble() * abecedario.length() - 1 + 0);
            cadena = cadena + abecedario.charAt(pos);
            m++;
        }
        return cadena;
    }

    public EnviarCorreo() {
        miCorreo = "piviuteq@gmail.com";
        miPassword = "87654321uteq";
    }

    public String configurarServidor() {
        String ser = "";
        try {
            if (this.servidor == 0) {
                ser = "smtp.gmail.com";
            }
            if (this.servidor == 1) {
                ser = "smtp.live.com";
            }
            if (this.servidor == 2) {
                ser = "smtp.mail.yahoo.com";
            }
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        }
        return ser;
    }

    public boolean enviar(String para, String user) {
        boolean ban = false;
        try {
            servidorSMTP = configurarServidor();
            Properties props = new Properties();
            props.put("mail.smtp.host", servidorSMTP);
            props.setProperty("mail.smtp.starttls.enable", "true");//si usa Yahoo comentar esta linea         
            props.setProperty("mail.smtp.port", "587");
            props.setProperty("mail.smtp.user", miCorreo);
            props.setProperty("mail.smtp.auth", "true");
            SecurityManager security = System.getSecurityManager();
            Authenticator auth = new EnviarCorreo.autentificadorSMTP();
            String R = random();
            Session session = Session.getInstance(props, auth);
            cuerpo = " su codigo es : " + R;
            BodyPart texto = new MimeBodyPart();
            texto.setText(cuerpo);
            // Se compone el adjunto 
            // Una MultiParte para agrupar texto e imagen.
            MimeMultipart multiParte = new MimeMultipart();
            multiParte.addBodyPart(texto);
            // Se compone el correo, dando to, from, subject y el
            // contenido.
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(miCorreo));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(para));
            message.setSubject(asunto);
            message.setContent(multiParte);
            // Se envia el correo.
            Transport t = session.getTransport("smtp");
            t.connect(miCorreo, miPassword);
            t.sendMessage(message, message.getAllRecipients());
            System.out.println("em");
            t.close();
            ban = true;
            new AccesoDatos().modificarClave(user, R);
        } catch (MessagingException ex) {
            System.err.println(ex.getMessage());
        }
        return ban;
    }

 

    private class autentificadorSMTP extends javax.mail.Authenticator {
        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(miCorreo, miPassword);
        }
    }
}
