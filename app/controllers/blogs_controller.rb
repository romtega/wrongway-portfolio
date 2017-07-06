class BlogsController < ApplicationController

  def index
    @page_title = "Awful words"
    @blogs = Blog.last(3)
  end

  def show
  end

  def new
    @blogs = Blog.new
  end

  def create
    @blogs = Blog.new(params.require(:blog).permit(:title, :body))

    respond_to do |format|
      if @blogs.save
        format.html { redirect_to root_path, notice: 'What the hell I am doing here?'}
      else
        format.html { render new }
      end
    end
  end



end
