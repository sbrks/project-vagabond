class PostsController < ApplicationController
  # has_many :city_posts
  # has_many :users, through: :city_posts

  def index
    @posts = Post.all
    @cities = City.find(params[:id])
    render :index
  end

  def new
    @post = Post.new
    render :new
  end

  def create
    post_params = params.require(:post).permit(:title, :description)
    @post = Post.create(post_params)
    redirect_to "/cities/#{@cities.id}/posts"
  end

end
