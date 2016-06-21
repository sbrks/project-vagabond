class PostsController < ApplicationController
  has_many :city_posts
  has_many :users, through: :city_posts

  def posts_index
    @posts = Post.all
    render :index
  end

  def new_post
    @post = Post.new
    render :new
  end

end
