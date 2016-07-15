
<%@ page import="mp.personalfrontend.Paciente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'paciente.label', default: 'Paciente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-paciente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-paciente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'paciente.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'paciente.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="dni" title="${message(code: 'paciente.dni.label', default: 'Dni')}" />
					
						<g:sortableColumn property="fechaNacimiento" title="${message(code: 'paciente.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
					
						<g:sortableColumn property="mail" title="${message(code: 'paciente.mail.label', default: 'Mail')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'paciente.direccion.label', default: 'Direccion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pacienteInstanceList}" status="i" var="pacienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pacienteInstance.id}">${fieldValue(bean: pacienteInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "dni")}</td>
					
						<td><g:formatDate date="${pacienteInstance.fechaNacimiento}" /></td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "mail")}</td>
					
						<td>${fieldValue(bean: pacienteInstance, field: "direccion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pacienteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
