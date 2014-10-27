package anuncialo

import grails.transaction.Transactional

@Transactional
class AnnouncementService {

 /**def createService() {
		
    }
	
	def viewService(){
		
	}**/
	//def announcementService
	
		def index = { redirect(action:list,params:params) }
	
		// the delete, save and update actions only accept POST requests
		static allowedMethods = [delete:'POST', save:'POST', update:'POST']
	
	
	
		def list = {
				def result = announcementService.list(params)
				if(!result.error) {
					return [ announcementInstanceList: result.announcementInstanceList,
									announcementInstanceTotal: result.announcementInstanceTotal ]
				}
	
				flash.message = g.message(code: result.error.code, args: result.error.args)
				redirect( url: resource(dir:'') )
		}
	
	//     def showDefault = {
	//         def announcementInstance = Book.get( params.id )
	//
	//         if(!announcementInstance) {
	//             flash.message = "Book not found with id ${params.id}"
	//             redirect(action:list)
	//         }
	//         else { return [ announcementInstance : announcementInstance ] }
	//     }
	
		def viewAnnouncement() {

			def result = announcementService.show(params)
//	
//			if(!result.error)
//				return [ announcementInstance: result.announcementInstance ]
//	
//			flash.message = g.message(code: result.error.code, args: result.error.args)
//			redirect(action: list)
		}
	
	//     def deleteDefault = {
	//         def announcementInstance = Book.get( params.id )
	//         if(announcementInstance) {
	//             try {
	//                 announcementInstance.delete(flush:true)
	//                 flash.message = "Book ${params.id} deleted"
	//                 redirect(action:list)
	//             }
	//             catch(org.springframework.dao.DataIntegrityViolationException e) {
	//                 flash.message = "Book ${params.id} could not be deleted"
	//                 redirect(action:show,id:params.id)
	//             }
	//         }
	//         else {
	//             flash.message = "Book not found with id ${params.id}"
	//             redirect(action:list)
	//         }
	//     }
	
		def delete = {
			def result = announcementService.delete(params)
	
			if(!result.error) {
				flash.message = g.message(code: "default.delete.success", args: ["Book", params.id])
				redirect(action:list)
				return
			}
	
			flash.message = g.message(code: result.error.code, args: result.error.args)
	
			if(result.error.code == "default.not.found") {
				redirect(action:list)
				return
			}
	
			redirect(action:viewAnnouncement, id: params.id)
		}
	
	//     def editDefault = {
	//         def announcementInstance = Book.get( params.id )
	//
	//         if(!announcementInstance) {
	//             flash.message = "Book not found with id ${params.id}"
	//             redirect(action:list)
	//         }
	//         else {
	//             return [ announcementInstance : announcementInstance ]
	//         }
	//     }
	
		def edit = {
			def result = announcementService.edit(params)
	
			if(!result.error)
				return [ announcementInstance : result.announcementInstance ]
	
			flash.message = g.message(code: result.error.code, args: result.error.args)
			redirect(action: list)
		}
	
	//     def updateDefault = {
	//         def announcementInstance = Book.get( params.id )
	//         if(announcementInstance) {
	//             if(params.version) {
	//                 def version = params.version.toLong()
	//                 if(announcementInstance.version > version) {
	//
	//                     announcementInstance.errors.rejectValue("version", "book.optimistic.locking.failure", "Another user has updated this Book while you were editing.")
	//                     render(view:'edit',model:[announcementInstance:announcementInstance])
	//                     return
	//                 }
	//             }
	//             announcementInstance.properties = params
	//             if(!announcementInstance.hasErrors() && announcementInstance.save()) {
	//                 flash.message = "Book ${params.id} updated"
	//                 redirect(action:show,id:announcementInstance.id)
	//             }
	//             else {
	//                 render(view:'edit',model:[announcementInstance:announcementInstance])
	//             }
	//         }
	//         else {
	//             flash.message = "Book not found with id ${params.id}"
	//             redirect(action:list)
	//         }
	//     }
	
		def update = {
			def result = announcementService.update(params)
	
			if(!result.error) {
				flash.message = g.message(code: "default.update.success", args: ["Book", params.id])
				redirect(action:viewAnnouncement, id: params.id)
				return
			}
	
			if(result.error.code == "default.not.found") {
				flash.message = g.message(code: result.error.code, args: result.error.args)
				redirect(action:list)
				return
			}
	
			render(view:'edit', model:[announcementInstance: result.announcementInstance.attach()])
		}
	
	//     def createDefault = {
	//         def announcementInstance = new Book()
	//         announcementInstance.properties = params
	//         return ['announcementInstance':announcementInstance]
	//     }
	
		def create () {
			
			if(request.method == 'GET'){
				return [announcement: Announcement.get(params.title, params.content, params.owner ,params.date)]
			}
			
			def result = announcementService.create(params)
	
			if(!result.error)
				return [announcementInstance: result.announcementInstance]
	
			flash.message = g.message(code: result.error.code, args: result.error.args)
			redirect(action: list)
		}
	
	//     def saveDefault = {
	//         def announcementInstance = new Book(params)
	//         if(!announcementInstance.hasErrors() && announcementInstance.save()) {
	//             flash.message = "Book ${announcementInstance.id} created"
	//             redirect(action:show,id:announcementInstance.id)
	//         }
	//         else {
	//             render(view:'create',model:[announcementInstance:announcementInstance])
	//         }
	//     }
	
		def save = {
			def result = announcementService.save(params)
	
			if(!result.error) {
				flash.message = g.message(code: "default.create.success", args: ["Book", result.announcementInstance.id])
				redirect(action:viewAnnouncement, id: result.announcementInstance.id)
				return
			}
	
			render(view:'create', model:[announcementInstance: result.announcementInstance])
		}

}
