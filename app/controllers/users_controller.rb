class UsersController < ApplicationController
#only logged in users can see profile pages
 before_filter :authorize

	#renders home page
	def index
		@users = User.all
		render :index
	end

	def new
		@user = User.new
	end

	def create
		user = User.new(user_params)
		if user.save
			#login user
			session[:user_id] = user.id
			# tell the UserMailer to send a welcome email after save
			#UserMailer.welcome_email(@user).deliver_later
			#redirect to user#show w/ success message
			redirect_to "/", flash: { success: "Successfully signed up!"}

		else
			# there was an error, go back to signup page and display message
			redirect_to "/signup", flash: { error: @user.errors.full_messages.to_sentence }
		end
	end

	# def edit
	# 	@user = User.find(params[:id])
	# 	render :edit
	# end


	# def show
	# 	@user = User.find(params[:id])
	# end


	private

	def user_params
		params.require(:user).permit(:email, :password, :username)
	end

end
