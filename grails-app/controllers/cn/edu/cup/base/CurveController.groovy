package cn.edu.cup.base



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CurveController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Curve.list(params), model:[curveInstanceCount: Curve.count()]
    }

    def show(Curve curveInstance) {
        respond curveInstance
    }

    def create() {
        respond new Curve(params)
    }

    @Transactional
    def save(Curve curveInstance) {
        if (curveInstance == null) {
            notFound()
            return
        }

        if (curveInstance.hasErrors()) {
            respond curveInstance.errors, view:'create'
            return
        }

        curveInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'curve.label', default: 'Curve'), curveInstance.id])
                redirect curveInstance
            }
            '*' { respond curveInstance, [status: CREATED] }
        }
    }

    def edit(Curve curveInstance) {
        respond curveInstance
    }

    @Transactional
    def update(Curve curveInstance) {
        if (curveInstance == null) {
            notFound()
            return
        }

        if (curveInstance.hasErrors()) {
            respond curveInstance.errors, view:'edit'
            return
        }

        curveInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Curve.label', default: 'Curve'), curveInstance.id])
                redirect curveInstance
            }
            '*'{ respond curveInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Curve curveInstance) {

        if (curveInstance == null) {
            notFound()
            return
        }

        curveInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Curve.label', default: 'Curve'), curveInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'curve.label', default: 'Curve'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
