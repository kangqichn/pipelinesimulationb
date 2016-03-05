package cn.edu.cup.commondata



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CommonDataItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CommonDataItem.list(params), model:[commonDataItemInstanceCount: CommonDataItem.count()]
    }

    def show(CommonDataItem commonDataItemInstance) {
        respond commonDataItemInstance
    }

    def create() {
        respond new CommonDataItem(params)
    }

    @Transactional
    def save(CommonDataItem commonDataItemInstance) {
        if (commonDataItemInstance == null) {
            notFound()
            return
        }

        if (commonDataItemInstance.hasErrors()) {
            respond commonDataItemInstance.errors, view:'create'
            return
        }

        commonDataItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'commonDataItem.label', default: 'CommonDataItem'), commonDataItemInstance.id])
                redirect commonDataItemInstance
            }
            '*' { respond commonDataItemInstance, [status: CREATED] }
        }
    }

    def edit(CommonDataItem commonDataItemInstance) {
        respond commonDataItemInstance
    }

    @Transactional
    def update(CommonDataItem commonDataItemInstance) {
        if (commonDataItemInstance == null) {
            notFound()
            return
        }

        if (commonDataItemInstance.hasErrors()) {
            respond commonDataItemInstance.errors, view:'edit'
            return
        }

        commonDataItemInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CommonDataItem.label', default: 'CommonDataItem'), commonDataItemInstance.id])
                redirect commonDataItemInstance
            }
            '*'{ respond commonDataItemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CommonDataItem commonDataItemInstance) {

        if (commonDataItemInstance == null) {
            notFound()
            return
        }

        commonDataItemInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CommonDataItem.label', default: 'CommonDataItem'), commonDataItemInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'commonDataItem.label', default: 'CommonDataItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
