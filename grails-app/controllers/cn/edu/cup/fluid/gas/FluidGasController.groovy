package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FluidGasController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FluidGas.list(params), model:[fluidGasInstanceCount: FluidGas.count()]
    }

    def show(FluidGas fluidGasInstance) {
        respond fluidGasInstance
    }

    def create() {
        respond new FluidGas(params)
    }

    @Transactional
    def save(FluidGas fluidGasInstance) {
        if (fluidGasInstance == null) {
            notFound()
            return
        }

        if (fluidGasInstance.hasErrors()) {
            respond fluidGasInstance.errors, view:'create'
            return
        }

        fluidGasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'fluidGas.label', default: 'FluidGas'), fluidGasInstance.id])
                redirect fluidGasInstance
            }
            '*' { respond fluidGasInstance, [status: CREATED] }
        }
    }

    def edit(FluidGas fluidGasInstance) {
        respond fluidGasInstance
    }

    @Transactional
    def update(FluidGas fluidGasInstance) {
        if (fluidGasInstance == null) {
            notFound()
            return
        }

        if (fluidGasInstance.hasErrors()) {
            respond fluidGasInstance.errors, view:'edit'
            return
        }

        fluidGasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'FluidGas.label', default: 'FluidGas'), fluidGasInstance.id])
                redirect fluidGasInstance
            }
            '*'{ respond fluidGasInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(FluidGas fluidGasInstance) {

        if (fluidGasInstance == null) {
            notFound()
            return
        }

        fluidGasInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'FluidGas.label', default: 'FluidGas'), fluidGasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'fluidGas.label', default: 'FluidGas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
