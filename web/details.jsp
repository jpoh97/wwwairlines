<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<form action="./DetailServlet" method="POST">
    <div class="row">
        <div class="col s12 m10 offset-l1">
            <div class="card white center z-depth-5">
                <div class="card-content black-text">
                    <span class="card-title">DE <%= request.getSession().getAttribute("origen").toString().toUpperCase()%> A <%= request.getSession().getAttribute("destino").toString().toUpperCase()%></span>
                    <table>
                        <tbody>
                            <tr>
                                <td>AEROPUERTO DE SALIDA:</td>
                                <td><p><%= request.getSession().getAttribute("aeropuertosalida1")%></p></td>                          
                            </tr>
                            <tr>
                                <td>AEROPUERTO DE LLEGADA:</td>
                                <td><p><%= request.getSession().getAttribute("aeropuertollegada1")%></p></td>
                            </tr>
                            <tr>
                                <td>FECHA:</td>
                                <td><p><%= request.getSession().getAttribute("fechaida")%></p></td>
                            </tr>
                            <tr>
                                <td>PRECIO:</td>
                                <td><p><%= request.getSession().getAttribute("precioida")%></p></td>
                            </tr>
                            <tr>
                                <td>PASAJEROS:</td>
                                <td><p><%= request.getSession().getAttribute("pasajeros")%></p></td>
                            </tr>
                            <tr>    
                                <td colspan="2">    
                                    <p>
                                        <input type="checkbox" name="sillasida" id="sillasida" />
                                        <label for="sillasida">Seleccionar sillas</label>
                                    </p>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="center"><B>ESCALAS</B></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="center">
                                    <table class="highlight centered responsive-table">
                                        <thead>                    
                                        <th>CIUDAD</th>
                                        <th>AEROPUERTO</th>
                                        <th>AVION</th>
                                        <th>HORA</th>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${escalasida}" var="e1">
                                            <tr>
                                                <td>${e1.aeropuerto.ciudad}</td>
                                                <td>${e1.aeropuerto.nombre}</td>
                                                <td>${e1.idavion.id}</td>                        
                                                <td>${e1.hora}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                    </tbody>
                    </table>
                </div>
            </div>
        </div>               
    </div>
    <div class="row" style="display: ${tabla2}">
        <br/><br/>
        <div class="col s12 m10 offset-l1">
            <div class="card white center z-depth-5">
                <div class="card-content black-text">
                    <span class="card-title">DE <%= request.getSession().getAttribute("destino").toString().toUpperCase()%> A <%= request.getSession().getAttribute("origen").toString().toUpperCase()%></span>
                    <table>
                        <tbody>
                            <tr>
                                <td>AEROPUERTO DE SALIDA:</td>
                                <td><p><%= request.getSession().getAttribute("aeropuertosalida2")%></p></td>                          
                            </tr>
                            <tr>
                                <td>AEROPUERTO DE LLEGADA:</td>
                                <td><p><%= request.getSession().getAttribute("aeropuertollegada2")%></p></td>
                            </tr>
                            <tr>
                                <td>FECHA:</td>
                                <td><p><%= request.getSession().getAttribute("fecharegreso")%></p></td>
                            </tr>
                            <tr>
                                <td>PRECIO:</td>
                                <td><p><%= request.getSession().getAttribute("precioregreso")%></p></td>
                            </tr>   
                            <tr>
                                <td>PASAJEROS:</td>
                                <td><p><%= request.getSession().getAttribute("pasajeros")%></p></td>
                            </tr>
                            <tr>    
                                <td colspan="2">    
                                    <p>
                                        <input type="checkbox" name="sillasregreso" id="sillasregreso" />
                                        <label for="sillasregreso">Seleccionar sillas</label>
                                    </p>
                                </td>
                            </tr>                                                       
                            <tr>
                                <td colspan="2" class="center"><B>ESCALAS</B></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="center">
                                    <table class="highlight centered responsive-table">
                                        <thead>                    
                                        <th>CIUDAD</th>
                                        <th>AEROPUERTO</th>
                                        <th>AVION</th>
                                        <th>HORA</th>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${escalasvenida}" var="e1">
                                            <tr>
                                                <td>${e1.aeropuerto.ciudad}</td>
                                                <td>${e1.aeropuerto.nombre}</td>
                                                <td>${e1.idavion.id}</td>                        
                                                <td>${e1.hora}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>               
    </div>
    <br/><br/><br/>
    <div class="row center-align">
        <button class="btn waves-effect waves-light indigo accent-2" type="submit" name="action" value="Search">SIGUIENTE
            <i class="material-icons right">play_arrow</i>
        </button>            
    </div>
</form>
<jsp:include page="footer.jsp"/>