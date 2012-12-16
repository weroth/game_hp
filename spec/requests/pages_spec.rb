require 'spec_helper'

describe "Pages" do
  
  subject { page }    # subject of tests: page
  
  describe "Home page" do
    before { visit root_path }
    
    it { should have_selector('h1', :text => 'Welcome to Millenia Soft') }     
    it { should have_selector('title',:text => "Millenia Soft | Home") }    
    it { should_not have_selector 'title', text: '| Home' }
  end
  
  describe "Link page" do
    before { visit link_path }
    
    it { should have_selector('h1', :text => 'Millenia Soft Links') }             
    it { should have_selector('title', :text => "Millenia Soft | Link") }    
    
  end
  
  describe "Recruit page" do
    before { visit recruit_path }
           
    it { should have_selector('h1', :text => 'Millenia Soft Recruitment Drive') }    
    it { should have_selector('title', :text => "Millenia Soft | Recruit") }
    
  end
  
end
