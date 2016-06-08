<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header.jsp"/>
<div class="col s12 m10 offset-l1">
    <div class="card white center z-depth-5">
        <div class="card-content black-text">
            <span class="card-title">TRANSACCIÓN EXITOSA</span>
            <table class="highlight centered responsive-table">
                <thead>                    
                <th>VUELO</th>
                <th>ASIENTO</th>
                <th>CÓDIGO</th>
                <th>DOCUMENTO</th>
                </thead>
                <tbody>
                    <c:forEach items="${tiquetesidaclientes}" var="t1">
                        <tr>
                            <td>${t1.tiquetePK.vuelo}</td>
                            <td>${t1.tiquetePK.asiento}</td>
                            <td>${t1.codigo}</td>                        
                            <td>${t1.numeroid}</td>
                        </tr>
                    </c:forEach>
                    <c:forEach items="${tiquetesvenidaclientes}" var="t2">
                        <tr>
                            <td>${t2.tiquetePK.vuelo}</td>
                            <td>${t2.tiquetePK.asiento}</td>
                            <td>${t2.codigo}</td>
                            <td>${t2.numeroid}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br/>
            <p><B>Gracias por comprar con nosotros, te deseamos un feliz viaje</B></p>
            <p>*Conserva el código de cada tiquete para realizar el check-in</p>
        </div>
    </div>
</div>               
<jsp:include page="footer.jsp"/>