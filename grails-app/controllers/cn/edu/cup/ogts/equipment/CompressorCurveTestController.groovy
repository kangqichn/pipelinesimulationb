package cn.edu.cup.ogts.equipment

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CompressorCurveTestController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CompressorCurveTest.list(params), model:[compressorCurveTestInstanceCount: CompressorCurveTest.count()]
    }

    def show(CompressorCurveTest compressorCurveTestInstance) {
        respond compressorCurveTestInstance
    }

    def create() {
        respond new CompressorCurveTest(params)
    }

    @Transactional
    def save(CompressorCurveTest compressorCurveTestInstance) {
        if (compressorCurveTestInstance == null) {
            notFound()
            return
        }

        if (compressorCurveTestInstance.hasErrors()) {
            respond compressorCurveTestInstance.errors, view:'create'
            return
        }

        compressorCurveTestInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'compressorCurveTest.label', default: 'CompressorCurveTest'), compressorCurveTestInstance.id])
                redirect compressorCurveTestInstance
            }
            '*' { respond compressorCurveTestInstance, [status: CREATED] }
        }
    }

    def edit(CompressorCurveTest compressorCurveTestInstance) {
        respond compressorCurveTestInstance
    }

    @Transactional
    def update(CompressorCurveTest compressorCurveTestInstance) {
        if (compressorCurveTestInstance == null) {
            notFound()
            return
        }

        if (compressorCurveTestInstance.hasErrors()) {
            respond compressorCurveTestInstance.errors, view:'edit'
            return
        }

        compressorCurveTestInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CompressorCurveTest.label', default: 'CompressorCurveTest'), compressorCurveTestInstance.id])
                redirect compressorCurveTestInstance
            }
            '*'{ respond compressorCurveTestInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CompressorCurveTest compressorCurveTestInstance) {

        if (compressorCurveTestInstance == null) {
            notFound()
            return
        }

        compressorCurveTestInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CompressorCurveTest.label', default: 'CompressorCurveTest'), compressorCurveTestInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'compressorCurveTest.label', default: 'CompressorCurveTest'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
