package cn.edu.cup.producing



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductionDataController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProductionData.list(params), model:[productionDataInstanceCount: ProductionData.count()]
    }

    def show(ProductionData productionDataInstance) {
        respond productionDataInstance
    }

    def create() {
        respond new ProductionData(params)
    }

    @Transactional
    def save(ProductionData productionDataInstance) {
        if (productionDataInstance == null) {
            notFound()
            return
        }

        if (productionDataInstance.hasErrors()) {
            respond productionDataInstance.errors, view:'create'
            return
        }

        productionDataInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productionData.label', default: 'ProductionData'), productionDataInstance.id])
                redirect productionDataInstance
            }
            '*' { respond productionDataInstance, [status: CREATED] }
        }
    }

    def edit(ProductionData productionDataInstance) {
        respond productionDataInstance
    }

    @Transactional
    def update(ProductionData productionDataInstance) {
        if (productionDataInstance == null) {
            notFound()
            return
        }

        if (productionDataInstance.hasErrors()) {
            respond productionDataInstance.errors, view:'edit'
            return
        }

        productionDataInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProductionData.label', default: 'ProductionData'), productionDataInstance.id])
                redirect productionDataInstance
            }
            '*'{ respond productionDataInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductionData productionDataInstance) {

        if (productionDataInstance == null) {
            notFound()
            return
        }

        productionDataInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProductionData.label', default: 'ProductionData'), productionDataInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productionData.label', default: 'ProductionData'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
