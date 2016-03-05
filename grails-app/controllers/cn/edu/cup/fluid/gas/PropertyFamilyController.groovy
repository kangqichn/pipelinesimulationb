package cn.edu.cup.fluid.gas

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PropertyFamilyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PropertyFamily.list(params), model:[propertyFamilyInstanceCount: PropertyFamily.count()]
    }

    def show(PropertyFamily propertyFamilyInstance) {
        respond propertyFamilyInstance
    }

    def create() {
        respond new PropertyFamily(params)
    }

    @Transactional
    def save(PropertyFamily propertyFamilyInstance) {
        if (propertyFamilyInstance == null) {
            notFound()
            return
        }

        if (propertyFamilyInstance.hasErrors()) {
            respond propertyFamilyInstance.errors, view:'create'
            return
        }

        propertyFamilyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'propertyFamily.label', default: 'PropertyFamily'), propertyFamilyInstance.id])
                redirect propertyFamilyInstance
            }
            '*' { respond propertyFamilyInstance, [status: CREATED] }
        }
    }

    def edit(PropertyFamily propertyFamilyInstance) {
        respond propertyFamilyInstance
    }

    @Transactional
    def update(PropertyFamily propertyFamilyInstance) {
        if (propertyFamilyInstance == null) {
            notFound()
            return
        }

        if (propertyFamilyInstance.hasErrors()) {
            respond propertyFamilyInstance.errors, view:'edit'
            return
        }

        propertyFamilyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PropertyFamily.label', default: 'PropertyFamily'), propertyFamilyInstance.id])
                redirect propertyFamilyInstance
            }
            '*'{ respond propertyFamilyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PropertyFamily propertyFamilyInstance) {

        if (propertyFamilyInstance == null) {
            notFound()
            return
        }

        propertyFamilyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PropertyFamily.label', default: 'PropertyFamily'), propertyFamilyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'propertyFamily.label', default: 'PropertyFamily'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
