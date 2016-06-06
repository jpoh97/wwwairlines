package com.udea.controller;

import com.udea.business.Aeropuerto;
import com.udea.business.Asiento;
import com.udea.business.Avion;
import com.udea.business.Cabina;
import com.udea.business.TiquetePK;
import com.udea.business.Vuelo;
import com.udea.business.Vueloxcabina;
import com.udea.ejb.AeropuertoFacadeLocal;
import com.udea.ejb.AsientoFacadeLocal;
import com.udea.ejb.CabinaFacadeLocal;
import com.udea.ejb.EscalaFacadeLocal;
import com.udea.ejb.TiqueteFacadeLocal;
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
import javax.servlet.http.HttpSession;

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

    @EJB
    private AsientoFacadeLocal asientoDAO;

    @EJB
    private TiqueteFacadeLocal tiqueteDAO;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            HttpSession session = request.getSession();

            String tipo = request.getParameter("tipodeviaje");
            String origen = request.getParameter("origen");
            String destino = request.getParameter("destino");
            String fechaidaStr = request.getParameter("fechaida");
            String pasajeros = request.getParameter("pasajeros");
            String fecharegresoStr;
            boolean flag = false;

            Aeropuerto aeropuertoSalida = null;
            Aeropuerto aeropuertoLlegada = null;
            Aeropuerto aeropuertoSalida2 = null;
            Aeropuerto aeropuertoLlegada2 = null;
            List<Aeropuerto> aeropuertosSalida;
            List<Aeropuerto> aeropuertosLlegada;

            Date fechaida = new Date();
            Date fecharegreso = new Date();

            if (fechaidaStr != null && !fechaidaStr.trim().equals("")) {
                fechaida = new Date(fechaidaStr);
                if (fechaida.compareTo(new Date()) == -1 || fechaida.compareTo(new Date()) == 0) {
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
                    if (fecharegreso.compareTo(fechaida) == -1 || fecharegreso.compareTo(fechaida) == 0) {
                        request.setAttribute("message", "FECHA DE REGRESO NO VALIDA");
                        flag = true;
                    } else {
                        session.setAttribute("fecharegreso", fecharegresoStr);
                    }
                } else {
                    request.setAttribute("message", "FECHA DE REGRESO NO VALIDA");
                    flag = true;
                }
            }

            aeropuertosLlegada = aeropuertoDAO.findByCity(destino);
            if (aeropuertosLlegada == null) {
                request.setAttribute("message", "AEROPUERTO DE DESTINO NO EXISTE");
                flag = true;
            }

            aeropuertosSalida = aeropuertoDAO.findByCity(origen);
            if (aeropuertosSalida == null) {
                request.setAttribute("message", "AEROPUERTO DE ORIGEN NO EXISTE");
                flag = true;
            }

            if (origen.trim().equalsIgnoreCase(destino.trim())) {
                request.setAttribute("message", "LA CIUDAD DE ORIGEN DEBE SER DIFERENTE A LA CIUDAD DE DESTINO");
                flag = true;
            }

            List<Vuelo> vuelosLlegada = new ArrayList<>();
            List<Vuelo> vuelosIda = new ArrayList<>();

            if (!flag) {
                boolean flag2 = false;
                for (Aeropuerto e1 : aeropuertosSalida) {
                    for (Aeropuerto e2 : aeropuertosLlegada) {
                        vuelosIda = vueloDAO.findFlights(e1, e2, fechaida);
                        if (vuelosIda != null) {
                            aeropuertoSalida = e1;
                            aeropuertoLlegada = e2;
                            flag2 = true;
                            break;
                        }
                    }
                    if (flag2) {
                        break;
                    }
                }

                flag2 = false;
                for (Aeropuerto e1 : aeropuertosLlegada) {
                    for (Aeropuerto e2 : aeropuertosSalida) {
                        vuelosLlegada = vueloDAO.findFlights(e1, e2, fecharegreso);
                        if (vuelosLlegada != null) {
                            aeropuertoSalida2 = e1;
                            aeropuertoLlegada2 = e2;
                            flag2 = true;
                            break;
                        }
                    }
                    if (flag2) {
                        break;
                    }
                }

                List<Vueloxcabina> vuelos1 = new ArrayList<>();
                List<Vueloxcabina> vuelos2 = new ArrayList<>();

                if (vuelosIda != null) {
                    vuelosIda.stream().forEach((v1) -> {
                        List<Cabina> cabinas = cabinaDAO.find(escalaDAO.find(v1).getIdavion());
                        if (cabinas != null) {
                            cabinas.stream().forEach((c1) -> {
                                Vueloxcabina vc = vueloxcabinaDAO.find(c1, v1);
                                if (vc != null) {
                                    int asientos1 = getAvailableSeats(c1, v1);
                                    if (asientos1 >= Integer.parseInt(pasajeros)) {
                                        vuelos1.add(vc);
                                    }
                                }
                            });
                        }
                    });
                }
                if (vuelos1.isEmpty()) {
                    request.setAttribute("desabilitaBoton", "disabled");
                }
                request.setAttribute("vuelosida", vuelos1);
                if (tipo != null && tipo.equalsIgnoreCase("0")) {
                    if (vuelosLlegada != null) {
                        vuelosLlegada.stream().forEach((v2) -> {
                            List<Cabina> cabinas = cabinaDAO.find(escalaDAO.find(v2).getIdavion());
                            if (cabinas != null) {
                                cabinas.stream().forEach((c2) -> {
                                    Vueloxcabina vc = vueloxcabinaDAO.find(c2, v2);
                                    if (vc != null) {
                                        int asientos2 = getAvailableSeats(c2, v2);
                                        if (asientos2 >= Integer.parseInt(pasajeros)) {
                                            vuelos2.add(vc);
                                        }
                                    }
                                });
                            }
                        });
                    }
                    if (vuelos2.isEmpty()) {
                        request.setAttribute("desabilitaBoton", "disabled");
                    }
                    request.setAttribute("vuelosllegada", vuelos2);
                    session.setAttribute("tabla2", "block");
                } else {
                    session.setAttribute("tabla2", "none");
                }
            }

            session.setAttribute("tipoDeViaje", tipo);
            session.setAttribute("origen", origen);
            session.setAttribute("destino", destino);
            session.setAttribute("fechaida", fechaidaStr);
            session.setAttribute("pasajeros", pasajeros);
            if (flag) {
                request.getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("/search.jsp").forward(request, response);
            }
        }
    }

    public int getAvailableSeats(Cabina c, Vuelo v) {
        if (c == null || v == null) {
            return 0;
        }
        List<Asiento> asientos = asientoDAO.findByCabina(c);
        if (asientos == null) {
            return 0;
        }
        int tiquetes = 0;
        tiquetes = asientos.stream().filter((a) -> (tiqueteDAO.find(new TiquetePK(v.getId(), a.getId())) != null)).map((_item) -> 1).reduce(tiquetes, Integer::sum);
        if (asientos.isEmpty()) {
            return 0;
        }
        return asientos.size() - tiquetes;
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
