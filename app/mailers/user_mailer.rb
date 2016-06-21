class UserMailer < ApplicationMailer
	default from: 'mistress.wyn@gmail.com'
 
  	def welcome_email(user)
   	  @user = user
    	@url  = '/login'
    	mail(to: @user.email, subject: 'Welcome to GoT')
  	end
end
