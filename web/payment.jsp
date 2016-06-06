<jsp:include page="header.jsp"/>
<form action="./PaymentServlet" method="POST">
    <div class="col s12 m6">
        <div class="card white center z-depth-5">
            <div class="card-content black-text">
                <span class="card-title">DATOS DE LA COMPRA</span>
                <table>
                    <tbody>
                        <tr>
                            <td>TIPO DE IDENTIFICACIÓN:</td>
                            <td><p><%= request.getSession().getAttribute("tipo")%></p></td>                          
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
                            <td>NÚMERO DE PASAJEROS:</td>
                            <td><p><%= request.getSession().getAttribute("pasajeros")%></p></td>
                        </tr>                        
                        <tr>
                            <td>PRECIO:</td>
                            <% if (request.getSession().getAttribute("tipoDeViaje").toString().equals("1")) {%>
                            <td><p><%=Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * Integer.parseInt(request.getSession().getAttribute("pasajeros").toString())%></p></td>
                            <% } else {%>                            
                            <td><p><%=Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * Integer.parseInt(request.getSession().getAttribute("pasajeros").toString()) + Integer.parseInt(request.getSession().getAttribute("precioregreso").toString()) * Integer.parseInt(request.getSession().getAttribute("pasajeros").toString())%></p></td>
                            <% } %>
                        </tr>
                        <tr>
                            <td>DESCUENTOS POR EDAD:</td>
                            <% if (request.getSession().getAttribute("tipoDeViaje").toString().equals("1")) {%>
                            <td><p><%=Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * 0.1 * Integer.parseInt(request.getSession().getAttribute("descuentos").toString())%></p></td>
                            <% } else {%>                            
                            <td><p><%=Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * 0.1 * Integer.parseInt(request.getSession().getAttribute("descuentos").toString()) + Integer.parseInt(request.getSession().getAttribute("precioregreso").toString()) * 0.1 * Integer.parseInt(request.getSession().getAttribute("descuentos").toString())%></p></td>
                            <% }%>                        
                        </tr>
                        <tr>
                            <td><B>TOTAL A PAGAR:</B></td>                                    
                            <% if (request.getSession().getAttribute("tipoDeViaje").toString().equals("1")) {%>
                            <td><B><p><%= Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * Integer.parseInt(request.getSession().getAttribute("pasajeros").toString()) - Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * 0.1 * Integer.parseInt(request.getSession().getAttribute("descuentos").toString()) %></p></B></td>
                            <% } else {%>
                            <td><B><p><%= Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * Integer.parseInt(request.getSession().getAttribute("pasajeros").toString()) + Integer.parseInt(request.getSession().getAttribute("precioregreso").toString()) * Integer.parseInt(request.getSession().getAttribute("pasajeros").toString()) - Integer.parseInt(request.getSession().getAttribute("precioida").toString()) * 0.1 * Integer.parseInt(request.getSession().getAttribute("descuentos").toString()) - Integer.parseInt(request.getSession().getAttribute("precioregreso").toString()) * 0.1 * Integer.parseInt(request.getSession().getAttribute("descuentos").toString()) %></p></B></td>
                            <% }%>
                        </tr>
                    </tbody>
                </table>
                <br/><br/>
                <div class="row"><B>MEDIOS DE PAGO</B></div>
                <ul class="collapsible popout" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header active"><i class="material-icons">credit_card</i>TARJETA DE CRÉDITO</div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="offset-l1 input-field col s12 l6">
                                    <input type="text" id="tarjeta" name="tarjeta" onkeydown="return validNumber()">
                                    <label for="id">Número de tarjeta de crédito</label>
                                </div>
                                <br/>
                                <button data-target="modalPagar" class="btn waves-effect waves-light modal-trigger indigo accent-2" type="submit" id="pagarbtn" disabled="disabled">PAGAR
                                    <i class="material-icons right">done</i>
                                </button>
                            </div>
                        </div>
                    </li>
                    <% if (request.getSession().getAttribute("socio") != null) {%> 
                    <li>
                        <div class="collapsible-header"><i class="material-icons">shopping_cart</i>MILLAS</div>
                        <div class="collapsible-body">
                            <div class="row">
                                <div class="offset-l1 input-field col s12 l6">
                                    <input type="text" id="tarjeta" name="millas" value="${millas}" disabled="true">
                                    <label for="id">Valor de las millas acumuladas</label>
                                </div>
                                <br/>
                                <button data-target="modalMillar" class="btn waves-effect waves-light modal-trigger ${colorBoton}" type="submit" ${desabilitarPagar}>PAGAR
                                    <i class="material-icons right">done</i>
                                </button>
                            </div>
                        </div>
                    </li>
                    <% }%>
                </ul>
            </div>
        </div>
    </div>
    <div id="modalPagar" class="modal">
        <div class="modal-content">
            <h4 class="center">¿Esta seguro de realizar la compra?</h4>
        </div>
        <div class="modal-footer">
            <button class="modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="action" value="tarjeta">PAGAR</button>
            <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">CANCELAR</a>
        </div>
    </div>
    <div id="modalMillar" class="modal">
        <div class="modal-content">
            <h4 class="center">¿Esta seguro de pagar con las millas acumuladas?</h4>
        </div>
        <div class="modal-footer">
            <button class="modal-action modal-close waves-effect waves-green btn-flat" type="submit" name="action" value="millar">PAGAR</button>
            <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">CANCELAR</a>
        </div>
    </div>
</form>
<jsp:include page="footer.jsp"/>