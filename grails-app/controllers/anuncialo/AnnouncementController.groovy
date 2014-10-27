package anuncialo



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AnnouncementController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def announcementService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Announcement.list(params), model:[announcementInstanceCount: Announcement.count()]
    }

	//Método 1 a mostrar
    def show(Announcement announcementInstance) {
		def showAnnouncement = announcementService.viewAnnouncement()
        //respond announcementInstance
    }

	//Método 2 a mostrar
    def create() {
        newAnnouncement = announcementService.create(params.title, params.content, params.dateTime)
		//respond new Announcement(params)
    }

    @Transactional
    def save(Announcement announcementInstance) {
        if (announcementInstance == null) {
            notFound()
            return
        }

        if (announcementInstance.hasErrors()) {
            respond announcementInstance.errors, view:'create'
            return
        }

        announcementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'announcement.label', default: 'Announcement'), announcementInstance.id])
                redirect announcementInstance
            }
            '*' { respond announcementInstance, [status: CREATED] }
        }
    }

    def edit(Announcement announcementInstance) {
        respond announcementInstance
    }

    @Transactional
    def update(Announcement announcementInstance) {
        if (announcementInstance == null) {
            notFound()
            return
        }

        if (announcementInstance.hasErrors()) {
            respond announcementInstance.errors, view:'edit'
            return
        }

        announcementInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Announcement.label', default: 'Announcement'), announcementInstance.id])
                redirect announcementInstance
            }
            '*'{ respond announcementInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Announcement announcementInstance) {

        if (announcementInstance == null) {
            notFound()
            return
        }

        announcementInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Announcement.label', default: 'Announcement'), announcementInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'announcement.label', default: 'Announcement'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
