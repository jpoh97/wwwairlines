/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.business.Asiento;
import com.udea.business.Cliente;
import com.udea.business.ClientePK;
import com.udea.business.SendEmail;
import com.udea.business.Socio;
import com.udea.business.SocioPK;
import com.udea.business.Tiquete;
import com.udea.business.TiquetePK;
import com.udea.business.Vuelo;
import com.udea.ejb.ClienteFacadeLocal;
import com.udea.ejb.SocioFacadeLocal;
import com.udea.ejb.TiqueteFacadeLocal;
import com.udea.ejb.VueloFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author JPOH97
 */
public class PaymentServlet extends HttpServlet {

    @EJB
    private TiqueteFacadeLocal tiqueteDAO;

    @EJB
    private SocioFacadeLocal socioDAO;
    
    @EJB
    private ClienteFacadeLocal clienteDAO;
    
    @EJB
    private VueloFacadeLocal vueloDAO;
    
    private SendEmail se = new SendEmail();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();

            ArrayList<Cliente> clientes = (ArrayList<Cliente>) session.getAttribute("clientes");
            ArrayList<Integer> posDesc = (ArrayList<Integer>) session.getAttribute("posDescuentos");
            String[] tiquetesida = (String[]) session.getAttribute("tiquetesida2");
            String[] tiquetesvenida = (String[]) session.getAttribute("tiquetesvenida2");
            Vuelo vuelo = (Vuelo) session.getAttribute("vuelo1");
            Vuelo vuelo2 = (Vuelo) session.getAttribute("vuelo2");
            int tipo = Integer.parseInt(session.getAttribute("tipoDeViaje").toString());
            Socio socio = (Socio) session.getAttribute("socio");
            Cliente cliente = (Cliente) session.getAttribute("cliente");
            List<Asiento> asientos1 = (List<Asiento>) session.getAttribute("tiquetesida");
            List<Asiento> asientos2 = (List<Asiento>) session.getAttribute("tiquetesvenida");
            double total = (double) session.getAttribute("totalPagar");
            String tarjeta = request.getParameter("tarjeta");
            String action = request.getParameter("action");
            String fechanacimiento;
            ArrayList<Tiquete> tiquetesClientes = new ArrayList<>();
            ArrayList<Tiquete> tiquetesClientes2 = new ArrayList<>();
            Tiquete tiquete1 = null;
            Tiquete tiquete2 = null;
            boolean myFlag = false;

            if (action.equalsIgnoreCase("tarjeta")) {
                if (tarjeta == null || tarjeta.trim().equalsIgnoreCase("")) {
                    request.setAttribute("message", "ERROR INGRESANDO EL NÚMERO DE LA TARJETA");
                    request.getRequestDispatcher("/payment.jsp").forward(request, response);
                }
                myFlag = true;
            }

            if (clientes != null && !clientes.isEmpty()) {
                double precioIdaCliente = Integer.parseInt(request.getSession().getAttribute("precioida").toString());
                for (int i = 1; i <= clientes.size(); i++) {
                    String codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                    while (tiqueteDAO.finfByCodigo(codigo) != null) {
                        codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                    }
                    if (tiquetesida != null) {
                        tiquetesClientes.add(new Tiquete(new TiquetePK(vuelo.getId(), Integer.parseInt(tiquetesida[i])), precioIdaCliente, clientes.get(i - 1).getClientePK().getTipoid(), clientes.get(i - 1).getClientePK().getNumeroid(), 2, codigo));
                    } else {
                        tiquetesClientes.add(new Tiquete(new TiquetePK(vuelo.getId(), asientos1.get(1).getId()), precioIdaCliente, clientes.get(i - 1).getClientePK().getTipoid(), clientes.get(i - 1).getClientePK().getNumeroid(), 2, codigo));
                        asientos1.remove(1);
                    }
                    if (tipo == 0) {
                        double precioVenidaCliente = Integer.parseInt(request.getSession().getAttribute("precioregreso").toString());
                        if (tiquetesvenida != null) {
                            tiquetesClientes2.add(new Tiquete(new TiquetePK(vuelo2.getId(), Integer.parseInt(tiquetesvenida[i])), precioVenidaCliente, clientes.get(i - 1).getClientePK().getTipoid(), clientes.get(i - 1).getClientePK().getNumeroid(), 2, codigo));
                        } else {
                            tiquetesClientes2.add(new Tiquete(new TiquetePK(vuelo2.getId(), asientos2.get(1).getId()), precioVenidaCliente, clientes.get(i - 1).getClientePK().getTipoid(), clientes.get(i - 1).getClientePK().getNumeroid(), 2, codigo));
                            asientos2.remove(1);
                        }
                    }
                }
                if (posDesc != null && !posDesc.isEmpty()) {
                    for (Integer pos : posDesc) {
                        tiquetesClientes.get(pos).setPrecio((tiquetesClientes.get(pos).getPrecio() * 0.9));
                    }
                    if (tipo == 0) {
                        for (Integer pos : posDesc) {
                            tiquetesClientes2.get(pos).setPrecio((tiquetesClientes2.get(pos).getPrecio() * 0.9));
                        }
                    }
                }
                for (Tiquete t : tiquetesClientes) {
                    tiqueteDAO.create(t);
                    request.setAttribute("message", sendEmail(t, t.getVuelo1(), t.getVuelo1().getAeropuertoSalida().getCiudad()));
                }
                for (Tiquete t : tiquetesClientes2) {
                    tiqueteDAO.create(t);
                    request.setAttribute("message", sendEmail(t, t.getVuelo1(), t.getVuelo1().getAeropuertoSalida().getCiudad()));
                }
            }

            if (socio != null) {
                double precioIdaSocio = Integer.parseInt(request.getSession().getAttribute("precioida").toString());
                boolean flag = false;
                if (socio.getFechaNacimiento().getYear() >= ((new Date()).getYear() - 12)) {
                    precioIdaSocio *= 0.9;
                    flag = true;
                } else if (socio.getFechaNacimiento().getYear() == ((new Date()).getYear() - 13)) {
                    if (socio.getFechaNacimiento().getMonth() > (new Date()).getMonth()) {
                        precioIdaSocio *= 0.9;
                        flag = true;
                    } else if (socio.getFechaNacimiento().getMonth() == (new Date()).getMonth()) {
                        if (socio.getFechaNacimiento().getDate() > (new Date()).getDate()) {
                            precioIdaSocio *= 0.9;
                            flag = true;
                        }
                    }
                }
                String codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                while (tiqueteDAO.finfByCodigo(codigo) != null) {
                    codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                }
                if (tiquetesida != null) {
                    tiquete1 = new Tiquete(new TiquetePK(vuelo.getId(), Integer.parseInt(tiquetesida[0])), precioIdaSocio, socio.getSocioPK().getTipoid(), socio.getSocioPK().getNumeroid(), 1, codigo);
                    tiqueteDAO.create(tiquete1);
                    request.setAttribute("message", sendEmail(tiquete1, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                    if (tipo == 0) {
                        double precioVenidaSocio = Integer.parseInt(request.getSession().getAttribute("precioregreso").toString());
                        if (flag) {
                            precioVenidaSocio *= 0.9;
                        }
                        codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                        while (tiqueteDAO.finfByCodigo(codigo) != null) {
                            codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                        }
                        if (tiquetesvenida != null) {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), Integer.parseInt(tiquetesvenida[0])), precioVenidaSocio, socio.getSocioPK().getTipoid(), socio.getSocioPK().getNumeroid(), 1, codigo);
                            tiqueteDAO.create(tiquete2);
                            request.setAttribute("message", sendEmail(tiquete2, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                        } else {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), asientos2.get(0).getId()), precioVenidaSocio, socio.getSocioPK().getTipoid(), socio.getSocioPK().getNumeroid(), 1, codigo);
                            tiqueteDAO.create(tiquete2);
                            request.setAttribute("message", sendEmail(tiquete2, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                            asientos2.remove(0);
                        }
                    }
                } else {
                    codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                    while (tiqueteDAO.finfByCodigo(codigo) != null) {
                        codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                    }
                    tiquete1 = new Tiquete(new TiquetePK(vuelo.getId(), asientos1.get(0).getId()), precioIdaSocio, socio.getSocioPK().getTipoid(), socio.getSocioPK().getNumeroid(), 1, codigo);
                    tiqueteDAO.create(tiquete1);
                    request.setAttribute("message", sendEmail(tiquete1, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                    asientos1.remove(0);
                    if (tipo == 0) {
                        double precioVenidaSocio = Integer.parseInt(request.getSession().getAttribute("precioregreso").toString());
                        if (flag) {
                            precioVenidaSocio *= 0.9;
                        }
                        codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                        while (tiqueteDAO.finfByCodigo(codigo) != null) {
                            codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                        }
                        if (tiquetesvenida != null) {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), Integer.parseInt(tiquetesvenida[0])), precioVenidaSocio, socio.getSocioPK().getTipoid(), socio.getSocioPK().getNumeroid(), 1, codigo);
                            tiqueteDAO.create(tiquete2);
                            request.setAttribute("message", sendEmail(tiquete2, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                        } else {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), asientos2.get(0).getId()), precioVenidaSocio, socio.getSocioPK().getTipoid(), socio.getSocioPK().getNumeroid(), 1, codigo);
                            tiqueteDAO.create(tiquete2);
                            request.setAttribute("message", sendEmail(tiquete2, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                            asientos2.remove(0);
                        }
                    }
                }
                socio.setMillas(socio.getMillas() + total * 0.2);
                if(myFlag) {
                    socio.setTarjeta_credito(Double.parseDouble(tarjeta));
                }
                socioDAO.edit(socio);
            }

            if (cliente != null) {
                double precioIdaCliente = Integer.parseInt(request.getSession().getAttribute("precioida").toString());
                boolean flag = false;
                if (cliente.getFechaNacimiento().getYear() >= ((new Date()).getYear() - 12)) {
                    precioIdaCliente *= 0.9;
                    flag = true;
                } else if (cliente.getFechaNacimiento().getYear() == ((new Date()).getYear() - 13)) {
                    if (cliente.getFechaNacimiento().getMonth() > (new Date()).getMonth()) {
                        precioIdaCliente *= 0.9;
                        flag = true;
                    } else if (cliente.getFechaNacimiento().getMonth() == (new Date()).getMonth()) {
                        if (cliente.getFechaNacimiento().getDate() > (new Date()).getDate()) {
                            precioIdaCliente *= 0.9;
                            flag = true;
                        }
                    }
                }
                String codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                while (tiqueteDAO.finfByCodigo(codigo) != null) {
                    codigo = UUID.randomUUID().toString().substring(0, 6).toUpperCase();
                }
                if (tiquetesida != null) {
                    tiquete1 = new Tiquete(new TiquetePK(vuelo.getId(), Integer.parseInt(tiquetesida[0])), precioIdaCliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                    tiqueteDAO.create(tiquete1);
                    request.setAttribute("message", sendEmail(tiquete1, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                    if (tipo == 0) {
                        double precioVenidaCliente = Integer.parseInt(request.getSession().getAttribute("precioregreso").toString());
                        if (flag) {
                            precioVenidaCliente *= 0.9;
                        }
                        if (tiquetesvenida != null) {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), Integer.parseInt(tiquetesvenida[0])), precioVenidaCliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                            tiqueteDAO.create(tiquete2);
                            request.setAttribute("message", sendEmail(tiquete2, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                        } else {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), asientos2.get(0).getId()), precioVenidaCliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                            tiqueteDAO.create(tiquete2);
                            request.setAttribute("message", sendEmail(tiquete2, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                            asientos2.remove(0);
                        }
                    }
                } else {
                    tiquete1 = new Tiquete(new TiquetePK(vuelo.getId(), asientos1.get(0).getId()), precioIdaCliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                    tiqueteDAO.create(tiquete1);
                    request.setAttribute("message", sendEmail(tiquete1, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                    asientos1.remove(0);
                    if (tipo == 0) {
                        double precioVenidacliente = Integer.parseInt(request.getSession().getAttribute("precioregreso").toString());
                        if (flag) {
                            precioVenidacliente *= 0.9;
                        }
                        if (tiquetesvenida != null) {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), Integer.parseInt(tiquetesvenida[0])), precioVenidacliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                            tiqueteDAO.create(tiquete2);
                            request.setAttribute("message", sendEmail(tiquete2, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                        } else {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), asientos2.get(0).getId()), precioVenidacliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                            tiqueteDAO.create(tiquete2);
                            request.setAttribute("message", sendEmail(tiquete2, vuelo, vuelo.getAeropuertoSalida().getCiudad()));
                            asientos2.remove(0);
                        }
                    }
                }
                if(myFlag) {
                    cliente.setTarjeta_credito(Double.parseDouble(tarjeta));
                    clienteDAO.edit(cliente);
                }
            }

            if (action.equalsIgnoreCase("millar")) {
                if (socio == null) {
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                    return;
                }
                socio.setMillas(socio.getMillas() - total);
                socioDAO.edit(socio);
            } else if (!action.equalsIgnoreCase("tarjeta")) {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                return;
            }
            tiquetesClientes.add(tiquete1);
            tiquetesClientes2.add(tiquete2);
            session.setAttribute("tiquetesidaclientes", tiquetesClientes);
            session.setAttribute("tiquetesvenidaclientes", tiquetesClientes2);
            request.getRequestDispatcher("/constancyPay.jsp").forward(request, response);
        }
    }
    
    private String sendEmail (Tiquete t, Vuelo v, String origen){
        t = tiqueteDAO.find(t.getTiquetePK());
        
        String nombres;
        String ident;
        String destino = v.getAeropuertoLlegada().getCiudad();
        String aeroorigen = v.getAeropuertoSalida().getNombre();
        String aerodestino = v.getAeropuertoLlegada().getNombre();
        String fecha = v.getFecha().toString();
        String recipient;
        Socio s;
        Cliente c;
        
        if (t.getTipo() == 2) {
            c = clienteDAO.find(new ClientePK(t.getTipoid(),t.getNumeroid()));
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
        } else{
            s = socioDAO.find(new SocioPK(t.getTipoid(),t.getNumeroid()));
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
        
        return se.send(t.getCodigo(), recipient, nombres, ident, origen, destino, aeroorigen, aerodestino, fecha);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
