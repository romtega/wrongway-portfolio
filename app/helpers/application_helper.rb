module ApplicationHelper

  def copyright_generator
    "@ #{Time.now.year} by <a href=""><b>Roman Ortega Mondaca</b></a>, All Rights Reserved.".html_safe
  end 

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: profile_path,
        title: 'Profile'
      },
      {
        url: works_path,
        title: 'Work'
      },
      {
        url: blogs_path,
        title: 'Jazz'
      },   
      {
        url: contact_path,
        title: 'Contact'
      },                  
    ]
  end

  def nav_helper
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<a href='#{item[:url]}' class='nav-link #{active? item[:url]}'>#{item[:title]}</a>"
    end

    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

end

