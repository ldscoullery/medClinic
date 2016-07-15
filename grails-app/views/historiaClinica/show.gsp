
<%@ page import="mp.personalfrontend.HistoriaClinica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historiaClinica.label', default: 'HistoriaClinica')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-historiaClinica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-historiaClinica" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list historiaClinica">
			
				<g:if test="${historiaClinicaInstance?.paciente}">
				<li class="fieldcontain">
					<span id="paciente-label" class="property-label"><g:message code="historiaClinica.paciente.label" default="Paciente" /></span>
					
						<span class="property-value" aria-labelledby="paciente-label"><g:link controller="paciente" action="show" id="${historiaClinicaInstance?.paciente?.id}">${historiaClinicaInstance?.paciente?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.fechaIngreso}">
				<li class="fieldcontain">
					<span id="fechaIngreso-label" class="property-label"><g:message code="historiaClinica.fechaIngreso.label" default="Fecha Ingreso" /></span>
					
						<span class="property-value" aria-labelledby="fechaIngreso-label"><g:formatDate date="${historiaClinicaInstance?.fechaIngreso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.diagnostico}">
				<li class="fieldcontain">
					<span id="diagnostico-label" class="property-label"><g:message code="historiaClinica.diagnostico.label" default="Diagnostico" /></span>
					
						<span class="property-value" aria-labelledby="diagnostico-label"><g:fieldValue bean="${historiaClinicaInstance}" field="diagnostico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.motivoConsulta}">
				<li class="fieldcontain">
					<span id="motivoConsulta-label" class="property-label"><g:message code="historiaClinica.motivoConsulta.label" default="Motivo Consulta" /></span>
					
						<span class="property-value" aria-labelledby="motivoConsulta-label"><g:fieldValue bean="${historiaClinicaInstance}" field="motivoConsulta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${historiaClinicaInstance?.referencia}">
				<li class="fieldcontain">
					<span id="referencia-label" class="property-label"><g:message code="historiaClinica.referencia.label" default="Referencia" /></span>
					
						<span class="property-value" aria-labelledby="referencia-label"><g:fieldValue bean="${historiaClinicaInstance}" field="referencia"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:historiaClinicaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${historiaClinicaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
