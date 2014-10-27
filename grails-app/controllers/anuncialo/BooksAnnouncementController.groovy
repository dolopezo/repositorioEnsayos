package anuncialo



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BooksAnnouncementController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BooksAnnouncement.list(params), model:[booksAnnouncementInstanceCount: BooksAnnouncement.count()]
    }

    def show(BooksAnnouncement booksAnnouncementInstance) {
        respond booksAnnouncementInstance
    }

    def create() {
        respond new BooksAnnouncement(params)
    }

    @Transactional
    def save(BooksAnnouncement booksAnnouncementInstance) {
        if (booksAnnouncementInstance == null) {
            notFound()
            return
        }

        if (booksAnnouncementInstance.hasErrors()) {
            respond booksAnnouncementInstance.errors, view:'create'
            return
        }

        booksAnnouncementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'booksAnnouncement.label', default: 'BooksAnnouncement'), booksAnnouncementInstance.id])
                redirect booksAnnouncementInstance
            }
            '*' { respond booksAnnouncementInstance, [status: CREATED] }
        }
    }

    def edit(BooksAnnouncement booksAnnouncementInstance) {
        respond booksAnnouncementInstance
    }

    @Transactional
    def update(BooksAnnouncement booksAnnouncementInstance) {
        if (booksAnnouncementInstance == null) {
            notFound()
            return
        }

        if (booksAnnouncementInstance.hasErrors()) {
            respond booksAnnouncementInstance.errors, view:'edit'
            return
        }

        booksAnnouncementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BooksAnnouncement.label', default: 'BooksAnnouncement'), booksAnnouncementInstance.id])
                redirect booksAnnouncementInstance
            }
            '*'{ respond booksAnnouncementInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BooksAnnouncement booksAnnouncementInstance) {

        if (booksAnnouncementInstance == null) {
            notFound()
            return
        }

        booksAnnouncementInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BooksAnnouncement.label', default: 'BooksAnnouncement'), booksAnnouncementInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'booksAnnouncement.label', default: 'BooksAnnouncement'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
