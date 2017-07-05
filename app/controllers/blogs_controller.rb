class BlogsController < ApplicationController

  def index
    @page_title = "Awful words"
    @blogs = Blog.last(3)
  end

  def new
    @blogs = Blog.new
  end


end
