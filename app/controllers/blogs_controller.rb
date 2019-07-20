class BlogsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy, :show]
  def index
    @blogs = Blog.desc_order
    @blog = Blog.new
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:success] = "New post created successfully"
    else
      flash[:error] = @blog.errors.full_messages
      render :new
    end
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      flash[:success] = "Updated successfully"
    else
      flash[:error] = @blog.errors.full_messages
    end
  end

  def destroy
    if @blog.destroy
      flash[:success] = "Updated successfully"
    else
      flash[:error] = @blog.errors.full_messages
    end
  end

  def show
  end

  def set_post
    @blog = Blog.find(params[:id])
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :language_id, :description)
  end
end
