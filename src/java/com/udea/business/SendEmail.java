/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.business;

import com.udea.ejb.ClienteFacadeLocal;
import com.udea.ejb.SocioFacadeLocal;
import java.util.Date;
import javax.ejb.EJB;

/**
 *
 * @author daemonsoft
 */
public class SendEmail {

    @EJB
    private static SocioFacadeLocal socioDAO;

    @EJB
    private static ClienteFacadeLocal clienteDAO;

    public static String send(Tiquete t) {

        String host = "personalizatucelcom.ipage.com";
        String port = "587";
        String user = "pruebasmtp@gsmadvance.co";
        String pass = "Prueba1234";
        String result;
        String subject = "Comprobante de compra tiquete " + t.getCodigo();

        String nombres;
        String ident;
        String origen;
        String destino;
        String aeroorigen;
        String aerodestino;
        Date fecha;
        String recipient;
        if (t.getTipo() == 2) {
            Cliente c = clienteDAO.find(new ClientePK(t.getTipoid(), t.getNumeroid()));
            nombres = c.getNombre() + " " + c.getApellido();
            int inttipo = Integer.parseInt(c.getClientePK().getTipoid());
            String strtipo = "";

            switch (inttipo) {
                case 1:
                    strtipo = "Cédula: ";
                    break;
                case 2:
                    strtipo = "Cédula de extranjeria: ";
                    break;
                case 3:
                    strtipo = "Pasaporte: ";
                    break;
                case 4:
                    strtipo = "Registro civil: ";
                    break;
            }
            ident = strtipo + " " + c.getClientePK().getNumeroid();
            recipient = c.getCorreo();
        } else {
            Socio s = socioDAO.find(new SocioPK(t.getTipoid(), t.getNumeroid()));
            nombres = s.getNombre() + " " + s.getApellido();
            int inttipo = Integer.parseInt(s.getSocioPK().getTipoid());
            String strtipo = "";

            switch (inttipo) {
                case 1:
                    strtipo = "Cédula: ";
                    break;
                case 2:
                    strtipo = "Cédula de extranjeria: ";
                    break;
                case 3:
                    strtipo = "Pasaporte: ";
                    break;
                case 4:
                    strtipo = "Registro civil: ";
                    break;
            }
            ident = strtipo + " " + s.getSocioPK().getNumeroid();
            recipient = s.getCorreo();
        }

        origen = t.getVuelo1().getAeropuertoSalida().getCiudad();

        destino = t.getVuelo1().getAeropuertoLlegada().getCiudad();
        aeroorigen = t.getVuelo1().getAeropuertoSalida().getNombre();

        aerodestino = t.getVuelo1().getAeropuertoLlegada().getNombre();
        fecha = t.getVuelo1().getFecha();

        String content = "<!doctype html>\n"
                + "<html>\n"
                + "<head>\n"
                + "	<title>Comprobante de compra</title>\n"
                + "</head>\n"
                + "<body>\n"
                + "<h1>Gracias por confiar en nosotros.</h1>\n"
                + "\n"
                + "<p>Para WWW Airlines es un placer acompa&ntilde;arle en sus viajes, a continuaci&oacute;n encontrar&aacute; la informaci&oacute;n asociada a su vuelo.</p>\n"
                + "\n"
                + "<table class=\"responsive-table highlight\">\n"
                + "	<tbody>\n"
                + "		<tr>\n"
                + "			<td>Código:</td>\n"
                + "			<td>\n"
                + "			<p>" + t.getCodigo() + "</p>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		<tr>\n"
                + "			<td>Identificaci&oacute;n:</td>\n"
                + "			<td>\n"
                + "			<p>" + ident + "</p>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		<tr>\n"
                + "			<td>Nombres:</td>\n"
                + "			<td>\n"
                + "			<p>" + nombres + "</p>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		<tr>\n"
                + "			<td>Ciudad de origen:</td>\n"
                + "			<td>\n"
                + "			<p>" + origen + "</p>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		<tr>\n"
                + "			<td>Aeropuerto de origen:</td>\n"
                + "			<td>\n"
                + "			<p>" + aeroorigen + "</p>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		<tr>\n"
                + "			<td>Ciudad de destino:</td>\n"
                + "			<td>\n"
                + "			<p>" + destino + "</p>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		<tr>\n"
                + "			<td>Aeropuerto de destino:</td>\n"
                + "			<td>\n"
                + "			<p>" + aerodestino + "</p>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "		<tr>\n"
                + "			<td>Fecha del Vuelo:</td>\n"
                + "			<td>\n"
                + "			<p>" + fecha + "</p>\n"
                + "			</td>\n"
                + "		</tr>\n"
                + "	</tbody>\n"
                + "</table>\n"
                + "\n"
                + "<p>Ahorre tiempo al hacer CheckIn online.</p>\n"
                + "</body>\n"
                + "</html>"
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
