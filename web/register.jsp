<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<form action="./RegisterServlet" method="POST">       
    <div class="row">
        <div class="input-field col s12 l4">
            <select name="tipoId">
                <option value="" disabled selected>Selecciona una opción</option>
                <option value="1">Cédula</option>
                <option value="2">Cédula de extranjeria</option>
                <option value="3">Pasaporte</option>
                <option value="3">Registro civil</option>
            </select>
            <label>Tipo de Identificación</label>
        </div>
        <div class="input-field col s12 l4 offset-l2">
            <input type="text" id="numeroId" name="numeroId">
            <label for="numeroId">Número de Identificación</label>
        </div>
        <div class="input-field col s12 l4">
            <input type="text" id="nombre" name="nombre">
            <label for="nombre">Nombre</label>
        </div>
        <div class="input-field col s12 l4 offset-l2">
            <input type="text" id="apellido" name="apellido">
            <label for="apellido">Apellido</label>
        </div>
        <div class="input-field col s12 l4">
            <input type="date" id="fechaNacimiento" name="fechaNacimiento" class="datepicker">
            <label for="fechaNacimiento">Fecha Nacimiento</label>
        </div>

        <div class="input-field col s12 l4 offset-l2">
            <input type="email" id="correo" name="correo" class="validate">
            <label for="correo">Correo</label>
        </div>
        <div class="input-field col s12 l4">
            <input type="password" id="contrasena" name="contrasena">
            <label for="contrasena">Contrasena</label>
        </div>                

        <div class="input-field col s12 l4 offset-l2">
            <select name="genero">
                <option value="" disabled selected>Selecciona una opción</option>
                <option value="M">Masculino</option>
                <option value="F">Femenino</option>
            </select>
            <label>Género</label>
        </div>
        <div class="input-field col s12 l4">
            <select name="paisNacimiento" value="${socio.paisNacimiento}">
                <option value="" disabled selected>Pais de Nacimiento</option>

                <c:forEach items="${paises}" var="p">
                    <option value="${p.id}" <c:if test="${p.id == socio.paisNacimiento}"> selected </c:if>>${p.nombre}</option>
                </c:forEach>
            </select>
        </div>
        <div class="input-field col s12 l4 offset-l2">
            <select name="paisResidencia" value="${socio.paisResidencia}">
                <option value="" disabled selected>Pais de Residencia</option>
                <c:forEach items="${paises}" var="p">
                    <option value="${p.id}" <c:if test="${p.id == socio.paisResidencia}"> selected </c:if>>${p.nombre}</option>
                </c:forEach>
            </select>
        </div>
        <div class="input-field col s12 l4">
            <select name="ciudad" value="${ciudad.id}">
                <option value="" disabled selected>Ciudad</option>
                <c:forEach items="${ciudades}" var="ci">
                    <option value="${ci.id}" <c:if test="${ci.id == ciudad.id}"> selected </c:if>>${ci.nombre}</option>
                </c:forEach>
            </select>
        </div>
        <div class="input-field col s12 l4 offset-l2">
            <input type="text" id="direccion" name="direccion">
            <label for="direccion">Direccion</label>
        </div>

        <div class="right col s12 l4 offset-l2">
            <button class="btn waves-effect waves-light indigo accent-2" type="submit" name="action" value="register">Registrar
                <i class="material-icons right">person_add</i>
            </button>
        </div>
    </div>

</form>
<jsp:include page="footer.jsp"/>