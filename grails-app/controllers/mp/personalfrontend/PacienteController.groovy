package mp.personalfrontend



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PacienteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Paciente.list(params), model:[pacienteInstanceCount: Paciente.count()]
    }

    def show(Paciente pacienteInstance) {
        respond pacienteInstance
    }

    def create() {
        respond new Paciente(params)
    }
	
	@Transactional
	def saveFromModal() {
		
		Paciente pacienteInstance = new Paciente(params)
		
//		pacienteInstance.nombre = params.nombre
//		pacienteInstance.apellido = params.apellido
//		pacienteInstance.dni = params.dni
//		pacienteInstance.fechaNacimiento = params.fechaNacimiento
//		pacienteInstance.mail = params.mail
//		pacienteInstance.direccion = params.direccion
//		pacienteInstance.pais = params.pais
//		pacienteInstance.ciudad = params.ciudad
//		pacienteInstance.localidad = params.localidad
//		pacienteInstance.obraSocial = params.obraSocial
//		//pacienteInstance.obraSocialNro = params.obraSocialNro
//		pacienteInstance.edad = Integer.parseInt(params.edad)
//		pacienteInstance.sexo = params.sexo
//		pacienteInstance.tel = Integer.parseInt(params.tel)
		
		if (pacienteInstance == null) {
			notFound()
			return
		}

		if (pacienteInstance.hasErrors()) {
//			respond pacienteInstance.errors, view:'create'
//			return
			pacienteInstance.errors.allErrors.each {
				println it
			}
		}
		
		
		pacienteInstance.save(flush:true)
		println "ingrese a saveFromModal"
		println "paciente :" + pacienteInstance.nombre + pacienteInstance.apellido
		redirect(controller: "HistoriaClinica", action: "create", model:[pacienteInstance : pacienteInstance])
	}


    @Transactional
    def save(Paciente pacienteInstance) {
        if (pacienteInstance == null) {
            notFound()
            return
        }

        if (pacienteInstance.hasErrors()) {
            respond pacienteInstance.errors, view:'create'
            return
        }

        pacienteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'paciente.label', default: 'Paciente'), pacienteInstance.id])
                redirect pacienteInstance
            }
            '*' { respond pacienteInstance, [status: CREATED] }
        }
    }

    def edit(Paciente pacienteInstance) {
        respond pacienteInstance
    }

    @Transactional
    def update(Paciente pacienteInstance) {
        if (pacienteInstance == null) {
            notFound()
            return
        }

        if (pacienteInstance.hasErrors()) {
            respond pacienteInstance.errors, view:'edit'
            return
        }

        pacienteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Paciente.label', default: 'Paciente'), pacienteInstance.id])
                redirect pacienteInstance
            }
            '*'{ respond pacienteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Paciente pacienteInstance) {

        if (pacienteInstance == null) {
            notFound()
            return
        }

        pacienteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Paciente.label', default: 'Paciente'), pacienteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'paciente.label', default: 'Paciente'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
