<%@ page import="mp.personalfrontend.HistoriaClinica" %>
<%! import enums.MotivoVisita %>
<calendar:resources lang="es" theme="blue2"/> <!--blue, aqua, blue2, brown, green, system, tas, win2k-1, win2k-2   -->


<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'paciente', 'error')} required">
	<label for="paciente">
		<g:message code="historiaClinica.paciente.label" default="Paciente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="paciente" name="paciente.id" from="${mp.personalfrontend.Paciente.list()}" optionKey="id" optionValue="${{it.nombre.toUpperCase() +' '+ it.apellido.toUpperCase()}}" required="" value="${paciente?.id}" class="many-to-one"/>
	<g:field type="button" id="btnNvo" name="newPaciente" value="Nuevo" onclick="crearPaciente()"/>

</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'fechaIngreso', 'error')} required">
	<label for="fechaIngreso">
		<g:message code="historiaClinica.fechaIngreso.label" default="Fecha Ingreso" />
		<span class="required-indicator">*</span>
	</label>
<%--	<g:datePicker name="fechaIngreso" format="dd-MM-YYYY" precision="day"  value="${historiaClinicaInstance?.fechaIngreso}"  />--%>
	<calendar:datePicker name="fechaIngreso" dateFormat="%m/%d/%Y" defaultValue="${new Date()}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'diagnostico', 'error')} required">
	<label for="diagnostico">
		<g:message code="historiaClinica.diagnostico.label" default="Diagnostico" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="diagnostico" required="" value="${historiaClinicaInstance?.diagnostico}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'motivoConsulta', 'error')} required">
	<label for="motivoConsulta">
		<g:message code="historiaClinica.motivoConsulta.label" default="Motivo Consulta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motivoConsulta" required="" value="${historiaClinicaInstance?.motivoConsulta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: historiaClinicaInstance, field: 'referencia', 'error')} required">
	<label for="referencia">
		<g:message code="historiaClinica.referencia.label" default="Referencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="referencia" from="${MotivoVisita?.values()}" noSelection="['':'-Elegir-']"/>
	
</div>

