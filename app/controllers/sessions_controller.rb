class SessionsController < ApplicationController
	include SessionsHelper

	def new
		#TODO: render a login view
		redirect_to @current_user if @current_user
	end

	def create
		user = User.confirm(params[:email], params[:password])
		#call user#confirm method
		if user
			#this creates the session, logging in the user
			session[:user_id] = user_id
			#redirect to show page
			redirect_to user_path(user.id)
		else
			#if there's an error logging user in
			redirect_to login_path #login path
		end
	end

	#log out current user
	def destroy
		#logout method is defined in helper file
		logout

		redirect_to root_path


	end

end
