class HomeController < ApplicationController
  def index
    @post = Post.all
    
    @select = Post.where(:title => params[:search])
  end

  def show
    @each_post = Post.find(params[:id])
    @comment = @each_post.comments
  end

  def create
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    
    redirect_to '/home/index'
  end

  def new
  end
end
