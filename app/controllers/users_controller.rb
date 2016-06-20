class UsersController < ApplicationController
#only logged in users can see profile pages
before_action :require_login, only: :show
	#renders home page
	def index
		render :index
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			#login user
			session[:user_id] = @user.id
			#redirect to user#show w/ success message
			redirect_to @user, flash: { success: "Successfully signed up!"}
		else
			#there was an error, go back to signup page and display message
			redirect_to sign_up_path, flash: { error: @user.errors.full_messages.to_sentence }
		end
	end


	def show
		@user = User.find(params[:id])
	end
	

	private

	def user_params
		params.require(:user).permit(:email, :password)
	end

end
