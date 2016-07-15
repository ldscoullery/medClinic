package mp.personalfrontend

import enums.MotivoVisita

class HistoriaClinica {

	//Paciente paciente
	String motivoConsulta
	Date fechaIngreso
	MotivoVisita referencia 
	String diagnostico // hay que ver como es esta
	Paciente paciente
	
    static constraints = {
		paciente unique:true
		fechaIngreso format:"dd-MM-YYYY"
    }
	
	def beforeInsert() {
		setDefaultLastUpdateDate()
	}

	def beforeUpdate() {
		setDefaultLastUpdateDate()
	}

	private def setDefaultLastUpdateDate() {
		fechaIngreso = new Date()
	}
}
