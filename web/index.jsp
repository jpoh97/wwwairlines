<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<form action="./IndexServlet" method="POST">
    <div class="row">
        <div class="col s12">
            <br>
            <div class="row center">
                <input class="with-gap" name="tipodeviaje" type="radio" id="idayregreso" value="0" checked="true"/>
                <label for="idayregreso">Ida y regreso</label>
                <input class="with-gap" name="tipodeviaje" type="radio" id="ida" value="1"/>
                <label for="ida">Ida</label>
            </div>

            <div class="row">
                <div class="input-field col s4 offset-s2">
                    <input type="text" id="origen" name="origen">
                    <label for="origen">Origen</label>
                </div>
                <div class="input-field col s4">
                    <input type="text" id="destino" name="destino">
                    <label for="destino">Destino</label>
                </div>                
            </div>

            <div class="row">
                <div class="input-field col s4 offset-s2">
                    <input type="date" id="fechaida" name="fechaida" class="datepicker">
                    <label for="fechaida">Fecha ida</label>
                </div>
                <div class="input-field col s4">
                    <input type="date" id="fecharegreso" name="fecharegreso" class="datepicker">
                    <label id="textofecharegreso" for="fecharegreso">Fecha regreso</label>
                </div>                
            </div>   
            <div class="row center-align">
                <button class="btn waves-effect waves-light indigo accent-2" type="submit" name="action" value="Search">BUSCAR
                    <i class="material-icons right">search</i>
                </button>
            </div>
        </div>
    </div>
</form>
<jsp:include page="footer.jsp"/>