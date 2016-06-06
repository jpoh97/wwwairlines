package com.udea.controller;

import com.udea.business.Cliente;
import com.udea.business.ClientePK;
import com.udea.business.Socio;
import com.udea.ejb.ClienteFacadeLocal;
import com.udea.ejb.SocioFacadeLocal;
import com.udea.ejb.TiqueteFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author JPOH97
 */
@WebServlet(name = "ClientDetailServlet", urlPatterns = {"/ClientDetailServlet"})
public class ClientDetailServlet extends HttpServlet {

    @EJB
    private ClienteFacadeLocal clienteDAO;

    @EJB
    private SocioFacadeLocal socioDAO;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();

            String[] tipoid = request.getParameterValues("tipoId");
            String[] numeroid = request.getParameterValues("numeroId");
            String[] nombre = request.getParameterValues("nombre");
            String[] apellido = request.getParameterValues("apellido");
            String[] fechaNacimiento = request.getParameterValues("fechaNacimiento");
            String[] tiquetesida = request.getParameterValues("tiquetesida");
            String[] tiquetesvenida = request.getParameterValues("tiquetesvenida");

            String pasajeros = (String) session.getAttribute("pasajeros");
            int pasaj;

            if (pasajeros == null || pasajeros.equalsIgnoreCase("")) {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }

            pasaj = Integer.parseInt(pasajeros);

            ArrayList<String> tiquetes = new ArrayList<>();

            if (tiquetesida != null && tiquetesida.length == pasaj) {
                for (String t1 : tiquetesida) {
                    if (tiquetes.contains(t1)) {
                        request.setAttribute("message", "LOS ASIENTOS DE IDA DEBEN SER DIFERENTES PARA CADA CLIENTE");
                        request.getRequestDispatcher("/clientDetails.jsp").forward(request, response);
                    }
                    tiquetes.add(t1);
                }
            }
            session.setAttribute("tiquetesida2", tiquetesida);

            tiquetes = new ArrayList<>();
            if (tiquetesvenida != null && tiquetesvenida.length == pasaj) {
                for (String t2 : tiquetesvenida) {
                    if (tiquetes.contains(t2)) {
                        request.setAttribute("message", "LOS ASIENTOS DE REGRESO DEBEN SER DIFERENTES PARA CADA CLIENTE");
                        request.getRequestDispatcher("/clientDetails.jsp").forward(request, response);
                    }
                    tiquetes.add(t2);
                }
            }
            session.setAttribute("tiquetesvenida2", tiquetesvenida);

            List<Cliente> clientes = new ArrayList<>();
            Cliente cliente = null;

            if (tipoid != null && tipoid.length == (pasaj - 1)
                    && numeroid != null && numeroid.length == (pasaj - 1)
                    && nombre != null && nombre.length == (pasaj - 1)
                    && apellido != null && apellido.length == (pasaj - 1)
                    && fechaNacimiento != null && fechaNacimiento.length == (pasaj - 1)) {

                for (int i = 0; i < numeroid.length; i++) {

                    if (tipoid[i] != null && !tipoid[i].equalsIgnoreCase("")
                            && numeroid[i] != null && !numeroid[i].equalsIgnoreCase("")
                            && nombre[i] != null && !nombre[i].equalsIgnoreCase("")
                            && apellido[i] != null && !apellido[i].equalsIgnoreCase("")
                            && fechaNacimiento[i] != null && !fechaNacimiento[i].equalsIgnoreCase("")) {

                        ClientePK clientePK = new ClientePK(tipoid[i], Integer.parseInt(numeroid[i]));
                        cliente = new Cliente(clientePK, nombre[i], apellido[i], new Date(fechaNacimiento[i]));
                        if (clienteDAO.find(clientePK) == null) {
                            clienteDAO.create(cliente);
                        } else {
                            clienteDAO.edit(cliente);
                        }
                        clientes.add(cliente);
                    } else {
                        request.setAttribute("message", "FALTAN CAMPOS POR LLENAR");
                        request.getRequestDispatcher("/clientDetails.jsp").forward(request, response);
                    }
                }
            } else if (pasaj != 1) {
                request.setAttribute("message", "FALTAN CAMPOS POR LLENAR");
                request.getRequestDispatcher("/clientDetails.jsp").forward(request, response);
            }

            int descuentos = 0;
            List<Integer> posDesc = new ArrayList<>();
            int pos = 0;

            for (Cliente cliente1 : clientes) {
                if (cliente1.getFechaNacimiento().getYear() >= ((new Date()).getYear() - 12)) {
                    descuentos++;
                    posDesc.add(pos);
                } else if (cliente1.getFechaNacimiento().getYear() == ((new Date()).getYear() - 13)) {
                    if (cliente1.getFechaNacimiento().getMonth() > (new Date()).getMonth()) {
                        descuentos++;
                        posDesc.add(pos);
                    } else if (cliente1.getFechaNacimiento().getMonth() == (new Date()).getMonth()) {
                        if (cliente1.getFechaNacimiento().getDate() > (new Date()).getDate()) {
                            descuentos++;
                            posDesc.add(pos);
                        }
                    }
                }
                pos++;
            }

            cliente = (Cliente) session.getAttribute("cliente");
            if (cliente != null) {
                if (cliente.getFechaNacimiento().getYear() >= ((new Date()).getYear() - 12)) {
                    descuentos++;
                } else if (cliente.getFechaNacimiento().getYear() == ((new Date()).getYear() - 13)) {
                    if (cliente.getFechaNacimiento().getMonth() > (new Date()).getMonth()) {
                        descuentos++;
                    } else if (cliente.getFechaNacimiento().getMonth() == (new Date()).getMonth()) {
                        if (cliente.getFechaNacimiento().getDate() > (new Date()).getDate()) {
                            descuentos++;
                        }
                    }
                }
            }

            Socio socio = (Socio) session.getAttribute("socio");
            if (socio != null) {
                if (socio.getFechaNacimiento().getYear() >= ((new Date()).getYear() - 12)) {
                    descuentos++;
                } else if (socio.getFechaNacimiento().getYear() == ((new Date()).getYear() - 13)) {
                    if (socio.getFechaNacimiento().getMonth() > (new Date()).getMonth()) {
                        descuentos++;
                    } else if (socio.getFechaNacimiento().getMonth() == (new Date()).getMonth()) {
                        if (socio.getFechaNacimiento().getDate() > (new Date()).getDate()) {
                            descuentos++;
                        }
                    }
                }
            }
            
            double totalPagar = 0;
            if(session.getAttribute("tipoDeViaje").toString().equalsIgnoreCase("1")) {
                totalPagar = Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * Integer.parseInt(request.getSession().getAttribute("pasajeros").toString()) - Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * 0.1 * descuentos;
            } else {
                totalPagar = Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * Integer.parseInt(request.getSession().getAttribute("pasajeros").toString()) + Integer.parseInt(request.getSession().getAttribute("precioregreso").toString()) * Integer.parseInt(request.getSession().getAttribute("pasajeros").toString()) - Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * 0.1 * descuentos - Integer.parseInt(request.getSession().getAttribute("precioregreso").toString()) * 0.1 * descuentos;
            }            
            
            if(socio != null) {                
                double millas = socio.getMillas();
                session.setAttribute("millas", millas);
                if(millas >= totalPagar) {
                    session.setAttribute("colorBoton", "indigo accent-2");
                } else {
                    session.setAttribute("colorBoton", "grey lighten-4");
                    session.setAttribute("desabilitarPagar", "disabled");
                }
            }
            
            session.setAttribute("clientes", clientes);
            session.setAttribute("descuentos", descuentos);
            session.setAttribute("posDescuentos", posDesc);
            session.setAttribute("totalPagar", totalPagar);
            request.getRequestDispatcher("/payment.jsp").forward(request, response);
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
