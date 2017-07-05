class PagesController < ApplicationController
  def home
  end

  def profile
    @page_title = "Roman | Profile"
  end

  def contact
    @page_title = "Roman | Contact Me"
  end
end
