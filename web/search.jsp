<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<form action="./SearchServlet" method="POST">
    <div class="row">
        <div class="col s12">
            <br>

            <div class="row">
                <div class="input-field col s6">
                    <input type="text" id="origen" name="origen" value="<%= request.getSession().getAttribute("origen")%>" disabled="true">
                    <label for="origen">Origen</label>
                </div>
                <div class="input-field col s6">
                    <input type="text" id="destino" name="destino" value="<%= request.getSession().getAttribute("destino")%>" disabled="true">
                    <label for="destino">Destino</label>
                </div>                
            </div>
            <br/><br/>
            <h5 class="center-align">VUELOS DE IDA</h5>
            <br/>
            <div class="col s12">
                <table class="centered responsive-table highlight bordered">
                    <thead>
                    <th>Código</th>
                    <th>Aeropuerto de salida</th>
                    <th>Aeropuerto de llegada</th>
                    <th>Fecha</th> 
                    <th>Cabina</th>          
                    <th>Precio</th>         
                    </thead>
                    <tbody>
                        <c:forEach items="${vuelosida}" var="vi">
                            <tr>
                                <td>${vi.vuelo.getId()}</td>
                                <td>${vi.vuelo.aeropuertoSalida.getNombre()}</td>
                                <td>${vi.vuelo.aeropuertoLlegada.getNombre()}</td>
                                <td>${vi.vuelo.getFecha()}</td>
                                <td>${vi.cabina.getTipo().getNombre()}</td>
                                <td>${vi.precio}</td>
                                <td><input class="with-gap" name="ida" type="radio" id="${vi.vuelo.getId()}-${vi.cabina.getId()}" value="${vi.vuelo.getId()}-${vi.cabina.getId()}" checked="true"/><label for="${vi.vuelo.getId()}-${vi.cabina.getId()}"></label></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <br/><br/>
            </div>
            <h5 class="center-align" style="display: ${tabla2}">VUELOS DE REGRESO</h5>
            <br/>
            <div class="col s12" style="display: ${tabla2}">
                <table class="centered responsive-table highlight bordered">
                    <thead>
                    <th>Código</th>
                    <th>Aeropuerto de salida</th>
                    <th>Aeropuerto de llegada</th>
                    <th>Fecha</th> 
                    <th>Cabina</th>          
                    <th>Precio</th>         
                    </thead>
                    <tbody>
                        <c:forEach items="${vuelosllegada}" var="vl">
                            <tr>
                                <td>${vl.vuelo.getId()}</td>
                                <td>${vl.vuelo.aeropuertoSalida.getNombre()}</td>
                                <td>${vl.vuelo.aeropuertoLlegada.getNombre()}</td>
                                <td>${vl.vuelo.getFecha()}</td>
                                <td>${vl.cabina.getTipo().getNombre()}</td>
                                <td>${vl.precio}</td>
                                <td><input class="with-gap" name="regreso" type="radio" id="${vl.vuelo.getId()}-${vl.cabina.getId()}" value="${vl.vuelo.getId()}-${vl.cabina.getId()}" checked="true"/><label for="${vl.vuelo.getId()}-${vl.cabina.getId()}"></label></td>
                            </tr>                     
                        </c:forEach>
                    </tbody>
                </table>
                <br/><br/>
            </div>
            <div class="row center-align">
                <button class="btn waves-effect waves-light indigo accent-2" type="submit" name="action" value="Search">SIGUIENTE
                    <i class="material-icons right">play_arrow</i>
                </button>            
            </div>
        </div>
    </div>
</form>
<jsp:include page="footer.jsp"/>