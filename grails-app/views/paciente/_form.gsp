<%@ page import="mp.personalfrontend.Paciente" %>



<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="paciente.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="20" required="" value="${pacienteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="paciente.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="25" required="" value="${pacienteInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="paciente.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dni" required="" value="${pacienteInstance?.dni}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="paciente.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" format="dd-MM-yyyy" precision="day"  value="${pacienteInstance?.fechaNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'mail', 'error')} required">
	<label for="mail">
		<g:message code="paciente.mail.label" default="Mail" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="mail" required="" value="${pacienteInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="paciente.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" maxlength="30" required="" value="${pacienteInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="paciente.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pais" maxlength="20" required="" value="${pacienteInstance?.pais}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'ciudad', 'error')} required">
	<label for="ciudad">
		<g:message code="paciente.ciudad.label" default="Ciudad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ciudad" maxlength="30" required="" value="${pacienteInstance?.ciudad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="paciente.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidad" maxlength="30" required="" value="${pacienteInstance?.localidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'obraSocial', 'error')} ">
	<label for="obraSocial">
		<g:message code="paciente.obraSocial.label" default="Obra Social" />
		
	</label>
	<g:textField name="obraSocial" value="${pacienteInstance?.obraSocial}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'obraSocialNro', 'error')}">
	<label for="obraSocialNro">
		<g:message code="paciente.obraSocialNro.label" default="Obra Social Nro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="obraSocialNro" type="number" value="${pacienteInstance.obraSocialNro}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'edad', 'error')} required">
	<label for="edad">
		<g:message code="paciente.edad.label" default="Edad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="edad" type="number" value="${pacienteInstance.edad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="paciente.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
<%--	<g:textField name="sexo" required="" value="${pacienteInstance?.sexo}"/>--%>
	<g:select name="sexo" from="${["Masculino","Femenino"]}" value="${pacienteInstance?.sexo}"
          noSelection="['':'-Sexo-']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pacienteInstance, field: 'tel', 'error')} required">
	<label for="tel">
		<g:message code="paciente.tel.label" default="Tel" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tel" type="number" value="${pacienteInstance.tel}" required=""/>

</div>

