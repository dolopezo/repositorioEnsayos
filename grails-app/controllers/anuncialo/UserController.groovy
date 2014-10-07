package anuncialo

class UserController {
  def scaffold = InternalUser
  
  def login = {}
  
  def authenticate = {
	  def user = InternalUser.findByEmailAndPassword(params.mail, params.password)
	
	if(user){
	  session.user = user
	  flash.message = "Hello ${user.name}!"
	  redirect(controller:"entry", action:"list")
	}else{
		user = ExternalUser.findByEmailAndPassword(params.mail, params.password)
		if(user){
			session.user = user
			flash.message = "Hello ${user.name}!"
			redirect(controller:"entry", action:"list")
		}else{
			flash.message = "Sorry, ${params.login}. Please try again."
			redirect(action:"login")
		}
	}
  }
  
  def logout = {
	flash.message = "Goodbye ${session.user.name}"
	session.user = null
	redirect(controller:"entry", action:"list")
  }
}