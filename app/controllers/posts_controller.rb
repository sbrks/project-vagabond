class PostsController < ApplicationController

  def index
    @posts = Post.all
    @city = City.find(params[:id])
    render :index
  end

  def new
    @post = Post.new
    @city = City.find(params[:id])
    render :new
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
    @post = Post.find(params[:id])
    render :edit
  end

  def destroy
    p params
    ben = Post.find(params[:id])
    ben.destroy
    redirect_to "/posts"
  end

end
