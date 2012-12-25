class PagesController < ApplicationController
  def home  
  end
  
  def about
    @title = "About"
    add_breadcrumb 'About', ''
  end
  
  def link
    @title = "Links"
    add_breadcrumb 'Links', ''
  end
  
  def recruit
    @title = "Recruitment"
    add_breadcrumb 'Recruit', ''
  end
end
