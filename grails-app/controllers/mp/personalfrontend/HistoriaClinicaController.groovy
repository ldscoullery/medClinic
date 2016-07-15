package mp.personalfrontend



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HistoriaClinicaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond HistoriaClinica.list(params), model:[historiaClinicaInstanceCount: HistoriaClinica.count()]
    }

    def show(HistoriaClinica historiaClinicaInstance) {
        respond historiaClinicaInstance
    }

    def create() {
        respond new HistoriaClinica(params)
    }
	

    @Transactional
    def save(HistoriaClinica historiaClinicaInstance) {
        if (historiaClinicaInstance == null) {
            notFound()
            return
        }

        if (historiaClinicaInstance.hasErrors()) {
            respond historiaClinicaInstance.errors, view:'create'
            return
        }

        historiaClinicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), historiaClinicaInstance.id])
                redirect historiaClinicaInstance
            }
            '*' { respond historiaClinicaInstance, [status: CREATED] }
        }
    }

    def edit(HistoriaClinica historiaClinicaInstance) {
        respond historiaClinicaInstance
    }

    @Transactional
    def update(HistoriaClinica historiaClinicaInstance) {
        if (historiaClinicaInstance == null) {
            notFound()
            return
        }

        if (historiaClinicaInstance.hasErrors()) {
            respond historiaClinicaInstance.errors, view:'edit'
            return
        }

        historiaClinicaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'HistoriaClinica.label', default: 'HistoriaClinica'), historiaClinicaInstance.id])
                redirect historiaClinicaInstance
            }
            '*'{ respond historiaClinicaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(HistoriaClinica historiaClinicaInstance) {

        if (historiaClinicaInstance == null) {
            notFound()
            return
        }

        historiaClinicaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'HistoriaClinica.label', default: 'HistoriaClinica'), historiaClinicaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
