package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GasComponentPropertyValueFactorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GasComponentPropertyValueFactor.list(params), model:[gasComponentPropertyValueFactorInstanceCount: GasComponentPropertyValueFactor.count()]
    }

    def show(GasComponentPropertyValueFactor gasComponentPropertyValueFactorInstance) {
        respond gasComponentPropertyValueFactorInstance
    }

    def create() {
        respond new GasComponentPropertyValueFactor(params)
    }

    @Transactional
    def save(GasComponentPropertyValueFactor gasComponentPropertyValueFactorInstance) {
        if (gasComponentPropertyValueFactorInstance == null) {
            notFound()
            return
        }

        if (gasComponentPropertyValueFactorInstance.hasErrors()) {
            respond gasComponentPropertyValueFactorInstance.errors, view:'create'
            return
        }

        gasComponentPropertyValueFactorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gasComponentPropertyValueFactor.label', default: 'GasComponentPropertyValueFactor'), gasComponentPropertyValueFactorInstance.id])
                redirect gasComponentPropertyValueFactorInstance
            }
            '*' { respond gasComponentPropertyValueFactorInstance, [status: CREATED] }
        }
    }

    def edit(GasComponentPropertyValueFactor gasComponentPropertyValueFactorInstance) {
        respond gasComponentPropertyValueFactorInstance
    }

    @Transactional
    def update(GasComponentPropertyValueFactor gasComponentPropertyValueFactorInstance) {
        if (gasComponentPropertyValueFactorInstance == null) {
            notFound()
            return
        }

        if (gasComponentPropertyValueFactorInstance.hasErrors()) {
            respond gasComponentPropertyValueFactorInstance.errors, view:'edit'
            return
        }

        gasComponentPropertyValueFactorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GasComponentPropertyValueFactor.label', default: 'GasComponentPropertyValueFactor'), gasComponentPropertyValueFactorInstance.id])
                redirect gasComponentPropertyValueFactorInstance
            }
            '*'{ respond gasComponentPropertyValueFactorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GasComponentPropertyValueFactor gasComponentPropertyValueFactorInstance) {

        if (gasComponentPropertyValueFactorInstance == null) {
            notFound()
            return
        }

        gasComponentPropertyValueFactorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GasComponentPropertyValueFactor.label', default: 'GasComponentPropertyValueFactor'), gasComponentPropertyValueFactorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gasComponentPropertyValueFactor.label', default: 'GasComponentPropertyValueFactor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
