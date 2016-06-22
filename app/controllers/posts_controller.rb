class PostsController < ApplicationController

  def index
    @posts = Post.all
    @city = City.find(params[:id])
    render :index
  end

  def new
    @post = Post.new
    @city = City.find(params[:id])
    @ben = current_user
    render :new
  end

  def create
    post_params = params.require(:posts).permit(:title, :description, :users_id, :post_id)
    @post = Post.create(post_params)
    @city = City.find(params[:id])
    redirect_to "/cities/#{@city.id}/posts"
  end

  def show
    @posts = Post.all
    render :show
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to "/users"
  end

end
