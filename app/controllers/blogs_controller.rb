class BlogsController < ApplicationController
  before_action :find_blog, only: [:show, :edit, :update, :destroy]

  def index
    @blogs = Blog.all
  end

  def new
  end

  def create
    Blog.create(
      title: params[:title],
      content: params[:content],
      image_url: params[:img_url]
    )
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    @blog.update(
      title: params[:title],
      content: params[:content],
      image_url: params[:img_url]
    )
    redirect_to blog_path
  end

  def destroy
    @blog.destroy
    redirect_to root_path
  end

  def find_blog
    @blog = Blog.find(params[:id])
  end
end
