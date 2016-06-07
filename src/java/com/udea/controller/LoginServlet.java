/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.business.Asiento;
import com.udea.business.Cabina;
import com.udea.business.Cliente;
import com.udea.business.ClientePK;
import com.udea.business.Socio;
import com.udea.business.SocioPK;
import com.udea.business.TiquetePK;
import com.udea.business.Vuelo;
import com.udea.ejb.AsientoFacadeLocal;
import com.udea.ejb.ClienteFacadeLocal;
import com.udea.ejb.PaisFacadeLocal;
import com.udea.ejb.SocioFacadeLocal;
import com.udea.ejb.TiqueteFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
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
public class LoginServlet extends HttpServlet {

    @EJB
    private SocioFacadeLocal socioDAO;

    @EJB
    private ClienteFacadeLocal clienteDAO;

    @EJB
    private AsientoFacadeLocal asientoDAO;

    @EJB
    private TiqueteFacadeLocal tiqueteDAO;
    @EJB
    private PaisFacadeLocal paisDAO;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        request.setAttribute("paises", paisDAO.findAll());
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            HttpSession session = request.getSession();

            Cabina cabina1 = (Cabina) request.getSession().getAttribute("cabina1");
            Vuelo vuelo1 = (Vuelo) request.getSession().getAttribute("vuelo1");
            Cabina cabina2 = (Cabina) request.getSession().getAttribute("cabina2");
            Vuelo vuelo2 = (Vuelo) request.getSession().getAttribute("vuelo2");

            String action = request.getParameter("action");
            if (action!=null &&  action.equalsIgnoreCase("Ingresar")) {
                String tipoIdentifiacion = request.getParameter("tipoIdentificacion");
                String id = request.getParameter("id");
                String contrasenia = request.getParameter("contrasenia");

                SocioPK socioPk;
                Socio socio = null;

                if (id != null && !id.trim().equalsIgnoreCase("")
                        && contrasenia != null && !contrasenia.trim().equalsIgnoreCase("")
                        && tipoIdentifiacion != null && !tipoIdentifiacion.trim().equalsIgnoreCase("")) {

                    socioPk = new SocioPK(tipoIdentifiacion, Integer.parseInt(id));

                    socio = socioDAO.find(socioPk);

                    if (socio != null) {
                        if (!socio.getContrasena().equals(contrasenia)) {
                            request.setAttribute("message", "ERROR AL INICIAR COMO SOCIO");
                            request.getRequestDispatcher("/login.jsp").forward(request, response);
                            return;
                        }
                        session.setAttribute("socio", socio);
                        switch (Integer.parseInt(socio.getSocioPK().getTipoid())) {
                            case 1:
                                session.setAttribute("tipo1", "selected");
                                session.setAttribute("tipo", "Cédula");
                                break;
                            case 2:
                                session.setAttribute("tipo2", "selected");
                                session.setAttribute("tipo", "Cédula de extranjeria");
                                break;
                            case 3:
                                session.setAttribute("tipo3", "selected");
                                session.setAttribute("tipo", "Pasaporte");
                                break;
                            case 4:
                                session.setAttribute("tipo4", "selected");
                                session.setAttribute("tipo", "Registro civil");
                                break;
                        }
                        if (socio.getGenero().equals("M")) {
                            session.setAttribute("genero1", "selected");
                            session.setAttribute("genero", "Masculino");
                        } else {
                            session.setAttribute("genero2", "selected");
                            session.setAttribute("genero", "Femenino");
                        }

                    } else {
                        request.setAttribute("message", "ERROR AL INICIAR COMO SOCIO");
                        request.getRequestDispatcher("/login.jsp").forward(request, response);
                        return;
                    }
                } else {
                    request.setAttribute("message", "ERROR AL INICIAR COMO SOCIO");
                    request.getRequestDispatcher("/login.jsp").forward(request, response);
                    return;
                    
                }
                List<Asiento> asientos1 = getAvailableSeats(cabina1, vuelo1);
                List<Asiento> asientos2 = getAvailableSeats(cabina2, vuelo2);
                if (asientos1 != null) {
                    session.setAttribute("tiquetesida", asientos1);
                }
                if (asientos2 != null) {
                    session.setAttribute("tiquetesvenida", asientos2);
                }
                request.getRequestDispatcher("/clientDetails.jsp").forward(request, response);
                return;
            } else if (action!=null &&  action.equalsIgnoreCase("continuar")) {

                String tipoId = request.getParameter("tipoId");
                String identificacion = request.getParameter("numeroId");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String fechaNacimiento = request.getParameter("fechaNacimiento");
                String correo = request.getParameter("correo");
                String genero = request.getParameter("genero");
                String paisNacimiento = request.getParameter("paisNacimiento");
                String paisResidencia = request.getParameter("paisResidencia");
                String departamento = request.getParameter("departamento");
                String ciudad = request.getParameter("ciudad");
                String direccion = request.getParameter("direccion");

                if (tipoId != null && !tipoId.trim().equalsIgnoreCase("")
                        && identificacion != null && !identificacion.trim().equalsIgnoreCase("")
                        && nombre != null && !nombre.trim().equalsIgnoreCase("")
                        && apellido != null && !apellido.trim().equalsIgnoreCase("")
                        && fechaNacimiento != null && !fechaNacimiento.trim().equalsIgnoreCase("")
                        && correo != null && !correo.trim().equalsIgnoreCase("")
                        && genero != null && !genero.trim().equalsIgnoreCase("")
                        && paisNacimiento != null && !paisNacimiento.trim().equalsIgnoreCase("")
                        && paisResidencia != null && !paisResidencia.trim().equalsIgnoreCase("")
                        && departamento != null && !departamento.trim().equalsIgnoreCase("")
                        && direccion != null && !direccion.trim().equalsIgnoreCase("")) {

                    ClientePK clientePK = new ClientePK(tipoId, Integer.parseInt(identificacion));
                    Cliente cliente = clienteDAO.find(clientePK);
                    if (cliente == null) {
                        cliente = new Cliente(clientePK, nombre, apellido, new Date(fechaNacimiento), correo, genero, Integer.parseInt(paisNacimiento), Integer.parseInt(paisResidencia), Integer.parseInt(departamento), Integer.parseInt(ciudad), direccion);
                        clienteDAO.create(cliente);
                    } else {
                        cliente = new Cliente(clientePK, nombre, apellido, new Date(fechaNacimiento), correo, genero, Integer.parseInt(paisNacimiento), Integer.parseInt(paisResidencia), Integer.parseInt(departamento), Integer.parseInt(ciudad), direccion);
                        clienteDAO.edit(cliente);
                    }
                    session.setAttribute("cliente", cliente);
                    switch (Integer.parseInt(tipoId)) {
                        case 1:
                            session.setAttribute("tipo", "Cédula");
                            break;
                        case 2:
                            session.setAttribute("tipo", "Cédula de extranjeria");
                            break;
                        case 3:
                            session.setAttribute("tipo", "Pasaporte");
                            break;
                        case 4:
                            session.setAttribute("tipo", "Registro civil");
                            break;
                    }
                    if (genero.equals("M")) {
                        session.setAttribute("genero", "Masculino");
                    } else {
                        session.setAttribute("genero", "Femenino");
                    }
                    List<Asiento> asientos1 = getAvailableSeats(cabina1, vuelo1);
                    List<Asiento> asientos2 = getAvailableSeats(cabina2, vuelo2);
                    if (asientos1 != null) {
                        session.setAttribute("tiquetesida", asientos1);
                    }
                    if (asientos2 != null) {
                        session.setAttribute("tiquetesvenida", asientos2);
                    }
                    request.getRequestDispatcher("/clientDetails.jsp").forward(request, response);
                    return;
                }
                request.setAttribute("message", "ERROR INGRESANDO LOS DATOS");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            }
        }
    }

    public List<Asiento> getAvailableSeats(Cabina c, Vuelo v) {
        if (c == null || v == null) {
            return null;
        }
        List<Asiento> asientos = asientoDAO.findByCabina(c);
        List<Asiento> asientosAvailable = new ArrayList<>();
        if (asientos == null) {
            return null;
        }
        for (Asiento a : asientos) {
            if (tiqueteDAO.find(new TiquetePK(v.getId(), a.getId())) == null) {
                asientosAvailable.add(a);
            }
        }
        if (asientosAvailable.isEmpty()) {
            return null;
        }
        return asientosAvailable;
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
