/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.business.Socio;
import com.udea.business.SocioPK;
import com.udea.ejb.SocioFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            HttpSession session = request.getSession();

            String action = request.getParameter("action");
            if (action.equalsIgnoreCase("Ingresar")) {
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
                        session.setAttribute("socio", socio);
                        switch (Integer.parseInt(socio.getSocioPK().getTipoid())) {
                            case 1:
                                session.setAttribute("tipo1", "selected");
                                break;
                            case 2:
                                session.setAttribute("tipo2", "selected");
                                break;
                            case 3:
                                session.setAttribute("tipo3", "selected");
                                break;
                            case 4:
                                session.setAttribute("tipo4", "selected");
                                break;
                        }
                        if (socio.getGenero().equals("M")) {
                            session.setAttribute("genero1", "selected");
                        } else {
                            session.setAttribute("genero2", "selected");
                        }

                    }
                }

                request.getRequestDispatcher("/login.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/detail.jsp").forward(request, response);
            }
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
