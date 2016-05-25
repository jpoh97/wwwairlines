package com.udea.controller;

import com.udea.business.Aeropuerto;
import com.udea.business.Avion;
import com.udea.business.Cabina;
import com.udea.business.Vuelo;
import com.udea.business.Vueloxcabina;
import com.udea.ejb.AeropuertoFacadeLocal;
import com.udea.ejb.CabinaFacadeLocal;
import com.udea.ejb.EscalaFacadeLocal;
import com.udea.ejb.VueloFacadeLocal;
import com.udea.ejb.VueloxcabinaFacadeLocal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndexServlet extends HttpServlet {

    @EJB
    private AeropuertoFacadeLocal aeropuertoDAO;

    @EJB
    private VueloFacadeLocal vueloDAO;

    @EJB
    private EscalaFacadeLocal escalaDAO;

    @EJB
    private CabinaFacadeLocal cabinaDAO;

    @EJB
    private VueloxcabinaFacadeLocal vueloxcabinaDAO;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String action = request.getParameter("action");

            String tipo = request.getParameter("tipodeviaje");
            String origen = request.getParameter("origen");
            String destino = request.getParameter("destino");
            String fechaidaStr = request.getParameter("fechaida");
            String tipofecha = request.getParameter("tipofecha");
            
            String fecharegresoStr;
            boolean flag = false;

            Aeropuerto aeropuertoSalida;
            Aeropuerto aeropuertoLlegada;

            Date fechaida = new Date();
            Date fecharegreso = new Date();

            if (fechaidaStr != null && !fechaidaStr.trim().equals("")) {
                fechaida = new Date(fechaidaStr);
                if (fechaida.compareTo(new Date()) == -1) {
                    request.setAttribute("message", "FECHA DE IDA NO VALIDA");
                    flag = true;
                }
            } else {
                request.setAttribute("message", "FECHA DE IDA NO VALIDA");
                flag = true;
            }

            if (tipo != null && tipo.equalsIgnoreCase("0")) {
                fecharegresoStr = request.getParameter("fecharegreso");
                if (fecharegresoStr != null && !fecharegresoStr.trim().equals("")) {
                    fecharegreso = new Date(fecharegresoStr);
                    if (fecharegreso.compareTo(fechaida) == -1) {
                        request.setAttribute("message", "FECHA DE REGRESO NO VALIDA");
                        flag = true;
                    } else {
                        request.setAttribute("fecharegreso", fecharegresoStr);
                    }
                } else {
                    request.setAttribute("message", "FECHA DE REGRESO NO VALIDA");
                    flag = true;
                }
            }
            
            origen = Character.toUpperCase(origen.charAt(0))+origen.substring(1).toLowerCase();
            destino = Character.toUpperCase(destino.charAt(0))+destino.substring(1).toLowerCase();
            
            System.out.println(origen+destino);
            aeropuertoLlegada = aeropuertoDAO.findByCity(destino);
            if (aeropuertoLlegada == null) {
                request.setAttribute("message", "CIUDAD DE DESTINO NO EXISTE");
                flag = true;
            }

            aeropuertoSalida = aeropuertoDAO.findByCity(origen);
            if (aeropuertoSalida == null) {
                request.setAttribute("message", "CIUDAD DE ORIGEN NO EXISTE");
                flag = true;
            }

            if (!flag) {
                if (aeropuertoSalida.getNombre().equalsIgnoreCase(aeropuertoLlegada.getNombre())) {
                    request.setAttribute("message", "EL AEROPUERTO DE SALIDA DEBE SER DIFERENTE AL DE LLEGADA");
                    flag = true;
                }
            }
            
            if (!flag) {
                List<Vuelo> vuelosIda = vueloDAO.findFlights(aeropuertoSalida, aeropuertoLlegada, fechaida);
                List<Vuelo> vuelosLlegada = vueloDAO.findFlights(aeropuertoLlegada, aeropuertoSalida, fecharegreso);
                List<Vueloxcabina> vuelos1 = new ArrayList<>();
                List<Vueloxcabina> vuelos2 = new ArrayList<>();

                if (vuelosIda != null) {
                    vuelosIda.stream().forEach((v1) -> {
                        List<Cabina> cabinas = cabinaDAO.find(escalaDAO.find(v1).getIdavion());
                        if (cabinas != null) {
                            cabinas.stream().forEach((c1) -> {
                                Vueloxcabina vc = vueloxcabinaDAO.find(c1, v1);
                                if (vc != null) {
                                    vuelos1.add(vc);
                                }
                            });
                        }
                    });
                }

                request.setAttribute("vuelosida", vuelos1);
                if (tipo != null && tipo.equalsIgnoreCase("0")) {
                    if (vuelosLlegada != null) {
                        System.out.println("Lista1" + vuelosLlegada.toString());
                        vuelosLlegada.stream().forEach((v2) -> {
                            List<Cabina> cabinas = cabinaDAO.find(escalaDAO.find(v2).getIdavion());
                            if (cabinas != null) {
                                System.out.println("Lista2" + cabinas.toString());
                                cabinas.stream().forEach((c2) -> {
                                    Vueloxcabina vc = vueloxcabinaDAO.find(c2, v2);
                                    if (vc != null) {
                                        vuelos2.add(vc);
                                    }
                                });
                            }
                        });
                    }
                    request.setAttribute("vuelosllegada", vuelos2);
                    request.setAttribute("tabla2", "block");
                } else {
                    request.setAttribute("tabla2", "none");
                }
            }

            request.setAttribute("origen", origen);
            request.setAttribute("destino", destino);
            request.setAttribute("fechaida", fechaidaStr);
            if (flag) {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/search.jsp").forward(request, response);
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
