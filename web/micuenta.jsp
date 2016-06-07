<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>

<form action="./MiCuenta" method="POST">
    <div class="col s12 m6">
        <div class="card white center z-depth-5">
            <div class="card-content black-text">
                <c:choose>
                    <c:when test="${nombre!=null}">
                        <span class="card-title">DATOS</span>
                        <div class="row">                            
                            <div class="input-field col s12 l6">
                                <c:choose>
                                    <c:when test="${tipoid==1}">
                                        <input type="text" id="tipoId" readonly="readonly" name="tipoId" value="Cedula">
                                    </c:when>
                                    <c:when test="${tipoid==2}">
                                        <input type="text" id="tipoId" readonly="readonly" name="tipoId" value="Cedula de extranjeria">
                                    </c:when>
                                    <c:when test="${tipoid==3}">
                                        <input type="text" id="tipoId" readonly="readonly" name="tipoId" value="Pasaporte">
                                    </c:when>
                                    <c:otherwise>
                                        <input type="text" id="tipoId" readonly="readonly" name="tipoId" value="Registro civil">
                                    </c:otherwise>
                                </c:choose>
                                <label for="tipoId">Tipo de Identificaci�n</label>
                            </div>
                            <div class="input-field col s12 l6">
                                <input type="text" id="numeroId" readonly="readonly" name="numeroId" value="${socio.socioPK.numeroid}">
                                <label for="numeroId">N�mero de Identificaci�n</label>
                            </div>
                            <div class="input-field col s12 l6">
                                <input type="password" id="contrasena" name="contrasena" value="${socio.contrasena}">
                                <label for="contrasena">Contrase�a</label>
                            </div>
                            <div class="input-field col s12 l6">
                                <input type="text" id="nombre" name="nombre" value="${socio.nombre}">
                                <label for="nombre">Nombre</label>
                            </div>
                            <div class="input-field col s12 l6">
                                <input type="text" id="apellido" name="apellido" value="${socio.apellido}">
                                <label for="apellido">Apellido</label>
                            </div>
                            <div class="input-field col s12 l6">
                                <input type="date" id="fechaNacimiento" name="fechaNacimiento" class="datepicker" value="${socio.fechaNacimiento}">
                                <label for="fechaNacimiento">Fecha Nacimiento</label>
                            </div>

                            <div class="input-field col s12 l6 left-align">
                                <input type="email" id="correo" name="correo" class="validate" value="${socio.correo}">
                                <label for="correo">Correo</label>
                            </div>

                            <div class="input-field col s12 l6">
                                <select name="genero" value="${socio.genero}">
                                    <option value="" disabled selected>G�nero</option>
                                    <option value="M" ${genero1}>Masculino</option>
                                    <option value="F" ${genero2}>Femenino</option>
                                </select>
                            </div>
                            <div class="input-field col s12 l6">
                                <select name="paisNacimiento" value="${socio.paisNacimiento}">
                                    <option value="" disabled selected>Pais de Nacimiento</option>

                                    <c:forEach items="${paises}" var="p">
                                        <option value="${p.id}" <c:if test="${p.id == socio.paisNacimiento}"> selected </c:if>>${p.nombre}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="input-field col s12 l6">
                                <select name="paisResidencia" value="${socio.paisResidencia}">
                                    <option value="" disabled selected>Pais de Residencia</option>
                                    <c:forEach items="${paises}" var="p">
                                        <option value="${p.id}" <c:if test="${p.id == socio.paisResidencia}"> selected </c:if>>${p.nombre}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="input-field col s12 l6">
                                <input type="text" id="departamento" name="departamento" value="${socio.departamento}"> 
                                <label for="departamento">Departamento</label>
                            </div>
                            <div class="input-field col s12 l6">
                                <input type="text" id="ciudad" name="ciudad" value="${socio.ciudad}">
                                <label for="ciudad">Ciudad</label>
                            </div>
                            <div class="input-field col s12 l6">
                                <input type="text" id="direccion" name="direccion" value="${socio.direccion}">
                                <label for="direccion">Direccion</label>
                            </div>
                            <br/>
                            <div class="col s12 center">
                                <button class="btn waves-effect waves-light indigo accent-2" type="submit" name="action" value="continuar">Actualizar
                                    <i class="material-icons right">language</i>
                                </button>
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <span class="card-title">INGRESAR</span>
                        <div class="row">
                            <div class="offset-s2 input-field col s8">
                                <select name="tipoIdentificacion">
                                    <option value="" disabled selected>Tipo de documento</option>
                                    <option value="1">C�dula</option>
                                    <option value="2">C�dula de extranjeria</option>
                                    <option value="3">Pasaporte</option>
                                    <option value="4">Registro civil</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="offset-s2 input-field col s8">
                                <input type="text" id="id" name="id">
                                <label for="id">N�mero de identificaci�n</label>
                            </div>
                        </div>    
                        <div class="row">          
                            <div class="offset-s2 input-field col s8">
                                <input type="password" id="contrasenia" name="contrasenia">
                                <label for="contrasenia">Contrase�a</label>
                            </div>
                        </div>
                        <div class="row center-align">
                            <button class="btn waves-effect waves-light indigo accent-2" type="submit" name="action" value="Ingresar">INGRESAR
                                <i class="material-icons right">play_arrow</i>
                            </button>            
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>      
</form>


<jsp:include page="footer.jsp"/>
