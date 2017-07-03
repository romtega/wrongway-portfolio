module ApplicationHelper

  def copyright_generator
    "@ #{Time.now.year} by <a href=""><b>Roman Ortega Mondaca</b></a>, All Rights Reserved.".html_safe
  end 

end

