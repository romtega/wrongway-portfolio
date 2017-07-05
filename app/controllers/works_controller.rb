class WorksController < ApplicationController

def index
  @page_title = "My Lovely Work"
  @works = Work.all
end

def new
  @works = Work.new
end


end
