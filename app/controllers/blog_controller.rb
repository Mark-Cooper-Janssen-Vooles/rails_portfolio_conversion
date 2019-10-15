class BlogController < ApplicationController

  def index
    @blog = Blog.all
  end

  def new
    @blog = Blog.new
    @blogs = Blog.all
  end

  def create
    @blog = Blog.create(blog_params)
    redirect_to projects_blog_path
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to projects_secret_path
  end

  def edit

  end

  private
  def blog_params
    params.require(:blog).permit(:image_url, :date, :hashes, :title, :body_text, :link_url)
  end
end