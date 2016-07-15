
<%@ page import="mp.personalfrontend.Paciente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-paciente" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list paciente">
			
				<g:if test="${pacienteInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="paciente.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${pacienteInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="paciente.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${pacienteInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.dni}">
				<li class="fieldcontain">
					<span id="dni-label" class="property-label"><g:message code="paciente.dni.label" default="Dni" /></span>
					
						<span class="property-value" aria-labelledby="dni-label"><g:fieldValue bean="${pacienteInstance}" field="dni"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="paciente.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${pacienteInstance?.fechaNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.mail}">
				<li class="fieldcontain">
					<span id="mail-label" class="property-label"><g:message code="paciente.mail.label" default="Mail" /></span>
					
						<span class="property-value" aria-labelledby="mail-label"><g:fieldValue bean="${pacienteInstance}" field="mail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="paciente.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${pacienteInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.pais}">
				<li class="fieldcontain">
					<span id="pais-label" class="property-label"><g:message code="paciente.pais.label" default="Pais" /></span>
					
						<span class="property-value" aria-labelledby="pais-label"><g:fieldValue bean="${pacienteInstance}" field="pais"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.ciudad}">
				<li class="fieldcontain">
					<span id="ciudad-label" class="property-label"><g:message code="paciente.ciudad.label" default="Ciudad" /></span>
					
						<span class="property-value" aria-labelledby="ciudad-label"><g:fieldValue bean="${pacienteInstance}" field="ciudad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="paciente.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:fieldValue bean="${pacienteInstance}" field="localidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.obraSocial}">
				<li class="fieldcontain">
					<span id="obraSocial-label" class="property-label"><g:message code="paciente.obraSocial.label" default="Obra Social" /></span>
					
						<span class="property-value" aria-labelledby="obraSocial-label"><g:fieldValue bean="${pacienteInstance}" field="obraSocial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.obraSocialNro}">
				<li class="fieldcontain">
					<span id="obraSocialNro-label" class="property-label"><g:message code="paciente.obraSocialNro.label" default="Obra Social Nro" /></span>
					
						<span class="property-value" aria-labelledby="obraSocialNro-label"><g:fieldValue bean="${pacienteInstance}" field="obraSocialNro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.edad}">
				<li class="fieldcontain">
					<span id="edad-label" class="property-label"><g:message code="paciente.edad.label" default="Edad" /></span>
					
						<span class="property-value" aria-labelledby="edad-label"><g:fieldValue bean="${pacienteInstance}" field="edad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.hc}">
				<li class="fieldcontain">
					<span id="hc-label" class="property-label"><g:message code="paciente.hc.label" default="Hc" /></span>
					
						<span class="property-value" aria-labelledby="hc-label"><g:link controller="historiaClinica" action="show" id="${pacienteInstance?.hc?.id}">${pacienteInstance?.hc?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.sexo}">
				<li class="fieldcontain">
					<span id="sexo-label" class="property-label"><g:message code="paciente.sexo.label" default="Sexo" /></span>
					
						<span class="property-value" aria-labelledby="sexo-label"><g:fieldValue bean="${pacienteInstance}" field="sexo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pacienteInstance?.tel}">
				<li class="fieldcontain">
					<span id="tel-label" class="property-label"><g:message code="paciente.tel.label" default="Tel" /></span>
					
						<span class="property-value" aria-labelledby="tel-label"><g:fieldValue bean="${pacienteInstance}" field="tel"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pacienteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pacienteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
