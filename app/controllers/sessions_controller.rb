class SessionsController < ApplicationController

	def new
		#TODO: render a login view
	end

	def create
		#call user#confirm method
		if User.confirm(params[:email], params[:password])
			#this creates the session, logging in the user
			session[:user_id] = user_id
			#redirect to show page
			redirect_to #need to put in show page (e.g. show_page(user.id) )
		else
			#if there's an error logging user in
			redirect_to #login path
		end
	end

	def destroy
		#log out current user
	end
end
