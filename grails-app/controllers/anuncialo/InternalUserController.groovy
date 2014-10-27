package anuncialo



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InternalUserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond InternalUser.list(params), model:[internalUserInstanceCount: InternalUser.count()]
    }

    def show(InternalUser internalUserInstance) {
        respond internalUserInstance
    }

    def create() {
        respond new InternalUser(params)
    }

    @Transactional
    def save(InternalUser internalUserInstance) {
        if (internalUserInstance == null) {
            notFound()
            return
        }

        if (internalUserInstance.hasErrors()) {
            respond internalUserInstance.errors, view:'create'
            return
        }

        internalUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'internalUser.label', default: 'InternalUser'), internalUserInstance.id])
                redirect internalUserInstance
            }
            '*' { respond internalUserInstance, [status: CREATED] }
        }
    }

    def edit(InternalUser internalUserInstance) {
        respond internalUserInstance
    }

    @Transactional
    def update(InternalUser internalUserInstance) {
        if (internalUserInstance == null) {
            notFound()
            return
        }

        if (internalUserInstance.hasErrors()) {
            respond internalUserInstance.errors, view:'edit'
            return
        }

        internalUserInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'InternalUser.label', default: 'InternalUser'), internalUserInstance.id])
                redirect internalUserInstance
            }
            '*'{ respond internalUserInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(InternalUser internalUserInstance) {

        if (internalUserInstance == null) {
            notFound()
            return
        }

        internalUserInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'InternalUser.label', default: 'InternalUser'), internalUserInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'internalUser.label', default: 'InternalUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
