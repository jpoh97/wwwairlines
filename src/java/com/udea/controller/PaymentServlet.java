/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.business.Asiento;
import com.udea.business.Cabina;
import com.udea.business.Cliente;
import com.udea.business.Socio;
import com.udea.business.Tiquete;
import com.udea.business.TiquetePK;
import com.udea.business.Vuelo;
import com.udea.ejb.AsientoFacadeLocal;
import com.udea.ejb.SocioFacadeLocal;
import com.udea.ejb.TiqueteFacadeLocal;
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
    private AsientoFacadeLocal asientoDAO;

    @EJB
    private SocioFacadeLocal socioDAO;

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
            String action = request.getParameter("action");

            ArrayList<Tiquete> tiquetesClientes = new ArrayList<>();
            ArrayList<Tiquete> tiquetesClientes2 = new ArrayList<>();
            Tiquete tiquete1 = null;
            Tiquete tiquete2 = null;
            
            if (action.equalsIgnoreCase("tarjeta")) {
                String tarjeta = request.getParameter("tarjeta");
                if(tarjeta == null || tarjeta.trim().equalsIgnoreCase("")) {
                    request.setAttribute("message", "ERROR INGRESANDO EL NÚMERO DE LA TARJETA");
                    request.getRequestDispatcher("/payment.jsp").forward(request, response);
                }
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
                }
                for (Tiquete t : tiquetesClientes2) {
                    tiqueteDAO.create(t);
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
                        } else {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), asientos2.get(0).getId()), precioVenidaSocio, socio.getSocioPK().getTipoid(), socio.getSocioPK().getNumeroid(), 1, codigo);
                            tiqueteDAO.create(tiquete2);
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
                        } else {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), asientos2.get(0).getId()), precioVenidaSocio, socio.getSocioPK().getTipoid(), socio.getSocioPK().getNumeroid(), 1, codigo);
                            tiqueteDAO.create(tiquete2);
                            asientos2.remove(0);
                        }
                    }
                }
                socio.setMillas(socio.getMillas() + total * 0.2);
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
                    if (tipo == 0) {
                        double precioVenidaCliente = Integer.parseInt(request.getSession().getAttribute("precioregreso").toString());
                        if (flag) {
                            precioVenidaCliente *= 0.9;
                        }
                        if (tiquetesvenida != null) {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), Integer.parseInt(tiquetesvenida[0])), precioVenidaCliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                            tiqueteDAO.create(tiquete2);
                        } else {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), asientos2.get(0).getId()), precioVenidaCliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                            tiqueteDAO.create(tiquete2);
                            asientos2.remove(0);
                        }
                    }
                } else {
                    tiquete1 = new Tiquete(new TiquetePK(vuelo.getId(), asientos1.get(0).getId()), precioIdaCliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                    tiqueteDAO.create(tiquete1);
                    asientos1.remove(0);
                    if (tipo == 0) {
                        double precioVenidacliente = Integer.parseInt(request.getSession().getAttribute("precioregreso").toString());
                        if (flag) {
                            precioVenidacliente *= 0.9;
                        }
                        if (tiquetesvenida != null) {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), Integer.parseInt(tiquetesvenida[0])), precioVenidacliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                            tiqueteDAO.create(tiquete2);
                        } else {
                            tiquete2 = new Tiquete(new TiquetePK(vuelo2.getId(), asientos2.get(0).getId()), precioVenidacliente, cliente.getClientePK().getTipoid(), cliente.getClientePK().getNumeroid(), 2, codigo);
                            tiqueteDAO.create(tiquete2);
                            asientos2.remove(0);
                        }
                    }
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
