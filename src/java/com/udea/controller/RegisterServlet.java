/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.business.Ciudad;
import com.udea.business.Socio;
import com.udea.business.SocioPK;
import com.udea.ejb.CiudadFacadeLocal;
import com.udea.ejb.PaisFacadeLocal;
import com.udea.ejb.SocioFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author william.hincapiem
 */
public class RegisterServlet extends HttpServlet {

    @EJB
    private SocioFacadeLocal socioDAO;
    @EJB
    private PaisFacadeLocal paisDAO;
    @EJB
    private CiudadFacadeLocal ciudadDAO;

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
        
        request.setAttribute("ciudades", ciudadDAO.findAll());
        try (PrintWriter out = response.getWriter()) {
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String fechaNacimiento = request.getParameter("fechaNacimiento");
            String correo = request.getParameter("correo");
            String contrasena = request.getParameter("contrasena");
            String genero = request.getParameter("genero");
            String paisNacimiento = request.getParameter("paisNacimiento");
            String paisResidencia = request.getParameter("paisResidencia");
            String ciudad = request.getParameter("ciudad");
            String direccion = request.getParameter("direccion");
            String tipoid = request.getParameter("tipoId");
            String numeroId = request.getParameter("numeroId");
            

            if (tipoid != null && numeroId != null && !tipoid.trim().equals("") && !numeroId.trim().equals("")) {
                Socio s = socioDAO.find(new SocioPK(tipoid, Integer.parseInt(numeroId)));
                if ((new Date(fechaNacimiento)).compareTo(  new Date())==-1) {
                    if (s == null) {
                        Ciudad c = ciudadDAO.find(Integer.parseInt(ciudad));
                        socioDAO.create(new Socio(tipoid, Integer.parseInt(numeroId), nombre, apellido, new Date(fechaNacimiento), correo, contrasena, genero, Integer.parseInt(paisNacimiento), Integer.parseInt(paisResidencia), c.getEstado().getId(), c.getId(), direccion));
                        request.setAttribute("message", "Socio registrado");
                    } else {
                        request.setAttribute("message", "El cliente ya existe");
                    }
                }else{
                    request.setAttribute("message", "Fecha de nacimiento no válida");
                }
            }
            request.getRequestDispatcher("/register.jsp").forward(request, response);

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
