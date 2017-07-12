class WorksController < ApplicationController

  def index
    @page_title = "My Lovely Work"
    @works = Work.all
  end

  def show
  end

  def new
    @works = Work.new
  end

  def create
    @works = Work.new(params.require(:work).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @works.save
        format.html { redirect_to works_path, notice: 'Your Work is now live.'}
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @works = Work.find(params[:id])
  end

  def update
    @works = Work.find(params[:id])
    respond_to do |format|
      if @works.update(params.require(:work).permit(:title, :subtitle, :body))
        format.html { redirect_to works_path, notice: 'Your work was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

end



