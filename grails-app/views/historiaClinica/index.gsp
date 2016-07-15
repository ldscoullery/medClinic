
<%@ page import="mp.personalfrontend.HistoriaClinica" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'historiaClinica.label', default: 'HistoriaClinica')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-historiaClinica" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-historiaClinica" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="historiaClinica.paciente.label" default="Paciente" /></th>
					
						<g:sortableColumn property="fechaIngreso" title="${message(code: 'historiaClinica.fechaIngreso.label', default: 'Fecha Ingreso')}" />
					
						<g:sortableColumn property="diagnostico" title="${message(code: 'historiaClinica.diagnostico.label', default: 'Diagnostico')}" />
					
						<g:sortableColumn property="motivoConsulta" title="${message(code: 'historiaClinica.motivoConsulta.label', default: 'Motivo Consulta')}" />
					
						<g:sortableColumn property="referencia" title="${message(code: 'historiaClinica.referencia.label', default: 'Referencia')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${historiaClinicaInstanceList}" status="i" var="historiaClinicaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${historiaClinicaInstance.id}">${fieldValue(bean: historiaClinicaInstance, field: "paciente")}</g:link></td>
					
						<td><g:formatDate date="${historiaClinicaInstance.fechaIngreso}" /></td>
					
						<td>${fieldValue(bean: historiaClinicaInstance, field: "diagnostico")}</td>
					
						<td>${fieldValue(bean: historiaClinicaInstance, field: "motivoConsulta")}</td>
					
						<td>${fieldValue(bean: historiaClinicaInstance, field: "referencia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${historiaClinicaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
