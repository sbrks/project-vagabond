class PostsController < ApplicationController

  def index
    @posts = Post.all
    render :index
  end

  def new
    @post = Post.new
    # @city = City.find(params[:id])
    # render :new
  end

  def create
    params[:posts][:user_id] = current_user.id
    post_params = params.require(:posts).permit(:title, :description, :user_id)
    Post.create(post_params)
    city = City.find(params[:id])
    redirect_to "/cities/#{city.id}/posts"
  end

  def show
    @posts = Post.all
    render :show
  end

  def edit
    @post_update = Post.find(params[:id])
    render :edit
  end

  def update
    @post_update = Post.find(params[:id])
    post_params = params.require(:post).permit(:title, :description)
    if @post_update.update_attributes(post_params)
      flash[:success] = "Post update!"
      redirect_to ("/posts/#{@post_update.id}/edit")
    end
  end

  def destroy
    ben = Post.find(params[:id])
    ben.destroy
    redirect_to :back
  end


end
