require 'spec_helper'

describe "Pages" do
  describe "Home page" do
    it "should have the h1 'Welcome to Michey Soft'" do
      visit '/'
      page.should have_selector('h1', :text => 'Welcome to Michey Soft')
      
      #page.should have_content('GameHp')
    end  
    
    it "should have the title 'Home'" do
      visit '/'
      page.should have_selector('title',
                        :text => "Michey Soft | Home")
    end
    
  end
  
  describe "Link page" do
       
    it "should have the h1 'Michey Soft Links'" do
      visit '/link'
      page.should have_selector('h1', :text => 'Michey Soft Links')         
    end 
    
   it "should have the title 'Link'" do
      visit '/link'
      page.should have_selector('title',
                        :text => "Michey Soft | Link")
    end
  end
  
  describe "Recruit page" do
       
    it "should have the h1 'Michey Soft Recruitment Drive'" do
      visit '/recruit'
      page.should have_selector('h1', :text => 'Michey Soft Recruitment Drive')         
    end 
    
   it "should have the title 'Recruit'" do
      visit '/recruit'
      page.should have_selector('title',
                        :text => "Michey Soft | Recruit")
    end
  end
  
end
