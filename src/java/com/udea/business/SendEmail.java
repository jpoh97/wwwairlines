/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;


/**
 *
 * @author daemonsoft
 */
public class SendEmail {


    public String send(String codigo, String recipient, String nombres, String ident, String origen, String destino, String aeroorigen, String aerodestino, String fecha) {

        String host = "personalizatucelcom.ipage.com";
        String port = "587";
        String user = "pruebasmtp@gsmadvance.co";
        String pass = "Prueba1234";
        String result;
        String subject = "Comprobante de compra tiquete " + codigo;


        String content = "\n"
                + "\n"
                + "\n"
                + "Comprobante de compra\n"
                + "\n"
                + "\n"
                + "Gracias por confiar en nosotros.\n"
                + "\n"
                + "Para WWW Airlines es un placer acompañarle en sus viajes, a continuación encontrará la información asociada a su vuelo.\n"
                + "\n"
                + "\n"
                + "Código: "+ codigo +"\n"
                + "Identificación: " + ident + "\n"
                + "Nombres: " + nombres + "\n"
                + "Ciudad de origen: " + origen + "\n"
                + "Aeropuerto de origen: " + aeroorigen + "\n"
                + "Ciudad de destino: " + destino + "\n"
                + "Aeropuerto de destino: " + aerodestino + "\n"
                + "Fecha del Vuelo: " + fecha + "\n"
                + "\n"
                + "\n"
                + "\n"
                + "\n"
                + "\n"
                + "Ahorre tiempo al hacer CheckIn online.\n"
                + "\n"
                + ""
                + "";

        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
                    content);
            result = "Email enviado correctamente";
        } catch (Exception ex) {
            result = "There were an error: " + ex.getMessage();
            return result;
        }

        return result;
    }

}
