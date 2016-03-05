package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GasComponentFamilyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GasComponentFamily.list(params), model:[gasComponentFamilyInstanceCount: GasComponentFamily.count()]
    }

    def show(GasComponentFamily gasComponentFamilyInstance) {
        respond gasComponentFamilyInstance
    }

    def create() {
        respond new GasComponentFamily(params)
    }

    @Transactional
    def save(GasComponentFamily gasComponentFamilyInstance) {
        if (gasComponentFamilyInstance == null) {
            notFound()
            return
        }

        if (gasComponentFamilyInstance.hasErrors()) {
            respond gasComponentFamilyInstance.errors, view:'create'
            return
        }

        gasComponentFamilyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gasComponentFamily.label', default: 'GasComponentFamily'), gasComponentFamilyInstance.id])
                redirect gasComponentFamilyInstance
            }
            '*' { respond gasComponentFamilyInstance, [status: CREATED] }
        }
    }

    def edit(GasComponentFamily gasComponentFamilyInstance) {
        respond gasComponentFamilyInstance
    }

    @Transactional
    def update(GasComponentFamily gasComponentFamilyInstance) {
        if (gasComponentFamilyInstance == null) {
            notFound()
            return
        }

        if (gasComponentFamilyInstance.hasErrors()) {
            respond gasComponentFamilyInstance.errors, view:'edit'
            return
        }

        gasComponentFamilyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GasComponentFamily.label', default: 'GasComponentFamily'), gasComponentFamilyInstance.id])
                redirect gasComponentFamilyInstance
            }
            '*'{ respond gasComponentFamilyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GasComponentFamily gasComponentFamilyInstance) {

        if (gasComponentFamilyInstance == null) {
            notFound()
            return
        }

        gasComponentFamilyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GasComponentFamily.label', default: 'GasComponentFamily'), gasComponentFamilyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gasComponentFamily.label', default: 'GasComponentFamily'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
