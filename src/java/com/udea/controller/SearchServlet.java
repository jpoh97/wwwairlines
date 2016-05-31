/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.controller;

import com.udea.business.Cabina;
import com.udea.business.Vuelo;
import com.udea.business.Vueloxcabina;
import com.udea.ejb.CabinaFacadeLocal;
import com.udea.ejb.VueloFacadeLocal;
import com.udea.ejb.VueloxcabinaFacadeLocal;
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
public class SearchServlet extends HttpServlet {

    @EJB
    private VueloFacadeLocal vueloDAO;

    @EJB
    private CabinaFacadeLocal cabinaDAO;

    @EJB
    private VueloxcabinaFacadeLocal vueloxcabinaDAO;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();

            String idaStr = request.getParameter("ida");

            String[] aux1 = idaStr.split("-");

            int idvuelo;
            int idcabina;

            Vuelo vuelo;
            Cabina cabina;
            Vueloxcabina vc;

            if (aux1 != null && aux1.length > 1) {
                idvuelo = Integer.parseInt(aux1[0]);
                idcabina = Integer.parseInt(aux1[1]);

                vuelo = vueloDAO.find(idvuelo);
                cabina = cabinaDAO.find(idcabina);

                vc = vueloxcabinaDAO.find(cabina, vuelo);

                session.setAttribute("aeropuertosalida1", vc.getVuelo().getAeropuertoSalida().getNombre());
                session.setAttribute("aeropuertollegada1", vc.getVuelo().getAeropuertoLlegada().getNombre());
                session.setAttribute("fechaida", vc.getVuelo().getFecha());
                session.setAttribute("precioida", vc.getPrecio());
            }

            String tipo = (String) request.getSession().getAttribute("tipo");
            if (tipo != null && tipo.equalsIgnoreCase("0")) {
                
                String regresoStr = request.getParameter("regreso");
                String[] aux2 = regresoStr.split("-");
                
                if (aux2 != null && aux2.length > 1) {
                    idvuelo = Integer.parseInt(aux2[0]);
                    idcabina = Integer.parseInt(aux2[1]);

                    vuelo = vueloDAO.find(idvuelo);
                    cabina = cabinaDAO.find(idcabina);

                    vc = vueloxcabinaDAO.find(cabina, vuelo);

                    session.setAttribute("aeropuertosalida2", vc.getVuelo().getAeropuertoSalida().getNombre());
                    session.setAttribute("aeropuertollegada2", vc.getVuelo().getAeropuertoLlegada().getNombre());
                    session.setAttribute("fecharegreso", vc.getVuelo().getFecha());
                    session.setAttribute("precioregreso", vc.getPrecio());
                }

            } 

            request.getRequestDispatcher("/details.jsp").forward(request, response);
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
