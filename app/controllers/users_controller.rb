class UsersController < ApplicationController
#only logged in users can see profile pages
 # before_filter :authorize
 	# before_action :logged_in?, only: [:edit, :update, :delete]
 	# before_action :current_user, only: [:show, :edit, :update, :delete]
 	before_action :require_login
 	skip_before_action :require_login, only: [:index, :new, :create, :show]

	#renders home page
	def index
		@users = User.all
    	@posts = Post.all
		render :index
	end

	def new
		@user = User.new
		render :new
	end

	def create
		user = User.new(user_params)
		if user.save
			#login user
			session[:user_id] = user.id
			# tell the UserMailer to send a welcome email after save
			#UserMailer.welcome_email(@user).deliver_later
			#redirect to user#show w/ success message

			# tell the UserMailer to send a welcome email after save
			UserMailer.welcome_email(user).deliver_now
			# #redirect to user#show w/ success message

			redirect_to "/users", flash: { success: "Successfully signed up!"}
			# tell the UserMailer to send a welcome email after save
			UserMailer.welcome_email(user).deliver_now
			# #redirect to user#show w/ success message
		else
			# there was an error, go back to signup page and display message
			redirect_to "/signup", flash: { error: user.errors.full_messages.to_sentence }
		end
	end

	def show
		@user = User.find(params[:id])
    @user_id = session[:user_id]
    @posts = Post.all
    render :show
	end
  # delete from profile page
  def destroy

    ben = Post.find(params[:id])
    ben.destroy
    redirect_to :back
  end
	#edit user profile
	def edit
		@user = User.find(params[:id])
		render 'edit'
	end


	#update user profile photo
	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:success] = "Profile updated!"
			# redirect_to @user
		else
			render 'edit'
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :username, :location, :image)
	end

	def require_login
		unless current_user
			flash[:error] = "You must be logged in to access this page"
			redirect_to "/"
		end
	end

end
