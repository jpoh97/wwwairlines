<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<form action="./ClientDetailServlet" method="POST">
    <div class="col s12 m6">
        <div class="card white center z-depth-5">
            <div class="card-content black-text">
                <span class="card-title">DATOS DEL VIAJERO</span>
                <table>
                    <tbody>
                        <tr>
                            <td>TIPO DE IDENTIFICACIÓN:</td>
                            <td><p>${tipo}</p></td>                          
                        </tr>
                        <tr>
                            <td>NÚMERO:</td>
                            <td><p>${socio.socioPK.numeroid}${cliente.clientePK.numeroid}</p></td>
                        </tr>
                        <tr>
                            <td>NOMBRE:</td>
                            <td><p>${socio.nombre}${cliente.nombre}</p></td>
                        </tr>
                        <tr>
                            <td>APELLIDO:</td>
                            <td><p>${socio.apellido}${cliente.apellido}</p></td>
                        </tr>
                        <tr>
                            <td>FECHA DE NACIMIENTO:</td>
                            <td><p>${fechanacimiento}</p></td>
                        </tr>
                        <tr>
                            <td>CORREO:</td>
                            <td><p>${socio.correo}${cliente.correo}</p></td>
                        </tr>
                        <tr>
                            <td>GÉNERO</td>
                            <td><p>${genero}</p></td>
                        </tr>
                        <tr>
                            <td>PAÍS DE NACIMIENTO:</td>
                            <td><p>${paisn}</p></td>
                        </tr>
                        <tr>
                            <td>PAÍS DE RESIDENCIA:</td>
                            <td><p>${paisr}</p></td>
                        </tr>
                        <tr>
                            <td>CIUDAD:</td>
                            <td><p>${ciudad}</p></td>
                        </tr>                
                        <tr>
                            <td>DIRECCIÓN:</td>
                            <td><p>${socio.direccion}${cliente.direccion}</p></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <% if (request.getSession().getAttribute("sillasida") != null) { %>
                                <div class="row">
                                    <div class="offset-l4 input-field col s12 l4">
                                        <select name="tiquetesida">
                                            <c:forEach items="${tiquetesida}" var="a1">
                                                <option value="${a1.id}">${a1.id}</option>                                                
                                            </c:forEach>
                                        </select>
                                        <label>* SELECCIONE ASIENTO DE IDA</label>
                                    </div>
                                </div>
                                <% }
                                    if (request.getSession().getAttribute("sillasregreso") != null) { %>
                                <div class="row">
                                    <div class="offset-l4 input-field col s12 l4">
                                        <select name="tiquetesvenida">
                                            <c:forEach items="${tiquetesvenida}" var="a2">
                                                <option value="${a2.id}">${a2.id}</option>                                                
                                            </c:forEach>
                                        </select>
                                        <label>* SELECCIONE ASIENTO DE REGRESO</label>
                                    </div>
                                </div>
                                <% }%>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <% for (int i = 2; i <= Integer.parseInt(request.getSession().getAttribute("pasajeros").toString()); i++) {%>
        <div class="row">
            <div class="card white center z-depth-5 col s10 l6">
                <div class="card-content black-text">
                    <span class="card-title">DATOS DEL VIAJERO <%=i%></span>
                    <p>* Ingresa la información personal de cada pasajero para realizar la compra</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="tipoId">
                                <option value="" disabled selected>Tipo de documento</option>
                                <option value="1">Cédula</option>
                                <option value="2">Cédula de extranjeria</option>
                                <option value="3">Pasaporte</option>
                                <option value="4">Registro civil</option>
                            </select>
                            <label for="tipoId">Tipo de documento</label>
                        </div>
                        <div class="input-field col s12">
                            <input type="text" id="numeroId" name="numeroId">
                            <label for="numeroId">Número de Identificación</label>
                        </div>
                        <div class="input-field col s12">
                            <input type="text" id="nombre" name="nombre">
                            <label for="nombre">Nombre</label>
                        </div>
                        <div class="input-field col s12">
                            <input type="text" id="apellido" name="apellido">
                            <label for="apellido">Apellido</label>
                        </div>
                        <div class="input-field col s12">
                            <input type="date" id="fechaNacimiento" name="fechaNacimiento" class="datepicker">
                            <label for="fechaNacimiento">Fecha Nacimiento</label>
                        </div>
                        <% if (request.getSession().getAttribute("sillasida") != null) { %>
                        <div class="row">
                            <div class="input-field col s12">
                                <select name="tiquetesida">
                                    <c:forEach items="${tiquetesida}" var="a1">
                                        <option value="${a1.id}">${a1.id}</option>                                                
                                    </c:forEach>
                                </select>
                                <label>* SELECCIONE ASIENTO DE IDA</label>
                            </div>
                        </div>
                        <% }
                            if (request.getSession().getAttribute("sillasregreso") != null) { %>
                        <div class="row">
                            <div class="input-field col s12">
                                <select name="tiquetesvenida">
                                    <c:forEach items="${tiquetesvenida}" var="a2">
                                        <option value="${a2.id}">${a2.id}</option>                                                
                                    </c:forEach>
                                </select>
                                <label>* SELECCIONE ASIENTO DE REGRESO</label>
                            </div>
                        </div>
                        <% }%>
                        <br/>
                    </div>
                </div>
            </div>
            <% }%>
            <div class="row center-align col s12">
                <br/><br/>
                <button class="btn waves-effect waves-light indigo accent-2" type="submit" name="action" value="Ingresar">CONTINUAR
                    <i class="material-icons right">play_arrow</i>
                </button>  
            </div>
        </div>
    </div>
</form>
<jsp:include page="footer.jsp"/>


