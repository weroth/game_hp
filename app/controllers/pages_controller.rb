class PagesController < ApplicationController
  def home
    
        
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
