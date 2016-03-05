package cn.edu.cup.base



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CurvePointController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CurvePoint.list(params), model:[curvePointInstanceCount: CurvePoint.count()]
    }

    def show(CurvePoint curvePointInstance) {
        respond curvePointInstance
    }

    def create() {
        respond new CurvePoint(params)
    }

    @Transactional
    def save(CurvePoint curvePointInstance) {
        if (curvePointInstance == null) {
            notFound()
            return
        }

        if (curvePointInstance.hasErrors()) {
            respond curvePointInstance.errors, view:'create'
            return
        }

        curvePointInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'curvePoint.label', default: 'CurvePoint'), curvePointInstance.id])
                redirect curvePointInstance
            }
            '*' { respond curvePointInstance, [status: CREATED] }
        }
    }

    def edit(CurvePoint curvePointInstance) {
        respond curvePointInstance
    }

    @Transactional
    def update(CurvePoint curvePointInstance) {
        if (curvePointInstance == null) {
            notFound()
            return
        }

        if (curvePointInstance.hasErrors()) {
            respond curvePointInstance.errors, view:'edit'
            return
        }

        curvePointInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CurvePoint.label', default: 'CurvePoint'), curvePointInstance.id])
                redirect curvePointInstance
            }
            '*'{ respond curvePointInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CurvePoint curvePointInstance) {

        if (curvePointInstance == null) {
            notFound()
            return
        }

        curvePointInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CurvePoint.label', default: 'CurvePoint'), curvePointInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'curvePoint.label', default: 'CurvePoint'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
