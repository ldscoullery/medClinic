package mp.personalfrontend

class Paciente {
	 
	String nombre
	String apellido
	String dni
	String sexo // solo masculino femenino
	Date fechaNacimiento
	int edad
	int tel
	String mail
	String direccion
	String pais
	String ciudad
	String localidad
	String obraSocial
	String obraSocialNro 
	
	//static hasOne = [hc:HistoriaClinica]
	
    static constraints = {
		nombre size: 3..20
		apellido size: 3..25
		dni uniqe: true
		fechaNacimiento format:'dd-MM-yyyy'
		mail email:true
		direccion size:3..30
		pais size:3..20
		ciudad size:3..30
		localidad size: 3..30
		obraSocial nullable:true
		obraSocialNro nullable:true
		edad range: 11..99
		tel size: 8..22
    }
}
