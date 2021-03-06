class SessionsController < ApplicationController
	include SessionsHelper

	def new
	end

	def create
		user = User.find_by_email(params[:email])
		#call user#confirm method
		if user && user.authenticate(params[:password])
			#this creates the session, logging in the user
			session[:user_id] = user.id
			#redirect to user show page
			redirect_to user
		else
			#if there's an error logging user in
			redirect_to "/login", flash: { error: "There was a problem logging you in." }
		end
	end

	#log out current user
	def destroy
		#logout method is defined in helper file
		session[:user_id] = nil
		redirect_to root_path
	end

end
