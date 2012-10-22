class PagesController < ApplicationController
  def home    
  end
  
  def link
      @title = "Links"
      add_breadcrumb 'Links', :recruit_path
  end
  
  def recruit
      @title = "Recruitment"
      add_breadcrumb 'Recruit', :recruit_path
  end
end
