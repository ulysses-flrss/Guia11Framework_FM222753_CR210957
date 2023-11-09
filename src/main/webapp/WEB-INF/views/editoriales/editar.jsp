<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Editar editorial</title>
    <jsp:include page="/WEB-INF/views/cabecera.jsp"/>
</head>
<body>
<jsp:include page="/WEB-INF/views/menu.jsp"/>
<div class="container">
    <div class="row">
        <h3>Editar editorial</h3>
    </div>
    <div class="row">
        <div class=" col-md-7">
            <f:form action="edit" method="POST" modelAttribute="editorial">
                <f:errors path="*" element="div" cssClass="alert alert-danger" />
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Campos requeridos</strong></div>
                <div class="form-group">
                    <label for="codigoEditorial">Codigo del editorial:</label>
                    <div class="input-group">
                        <f:input path="codigoEditorial" cssClass="form-control"
                                 readonly="true"/>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="nombreEditorial">Nombre del editorial:</label>
                    <div class="input-group">
                        <f:input path="nombreEditorial" cssClass="form-control"/>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="contacto">Contacto:</label>
                    <div class="input-group">
                        <f:input path="contacto" cssClass="form-control"/>
                        <span class="input-group-addon"><span class="glyphicon glypicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="telefono">Telefono:</label>
                    <div class="input-group">
                        <f:input path="telefono" cssClass="form-control"/>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <f:button class="btn btn-info">Guardar</f:button>
                <a class="btn btn-danger" href="<s:url value="/editoriales/list"/>">Cancelar</a>
            </f:form>
        </div>
    </div>
</div>
<jsp:include page="/WEB-INF/views/pie.jsp"/>
</body>
</html>
