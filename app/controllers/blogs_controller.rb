class BlogsController < ApplicationController
  before_action :set_blog, only: %i[ show update destroy ]

  # GET /blogs
  def index
    @blogs = Blog.all
  end

  # GET /blogs/1
  def show
  end

  # POST /blogs
  def create
    @blog = Blog.new(blog_params)

    @blog.save!
    render 'show', status: :created, location: @blog
  end

  # PATCH/PUT /blogs/1
  def update
    @blog.update!(blog_params)
    render 'show'
  end

  # DELETE /blogs/1
  def destroy
    @blog.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :content)
    end
end
