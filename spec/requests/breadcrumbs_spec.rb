require 'spec_helper'

describe "Breadcrumbs" do
  subject { page }    # subject of tests: page
  
  describe "Breadcrumbs at Home page" do
    before { visit root_path }

    it { should have_selector('ul', 
      :class => 'breadcrumb',
      :href => root_path,
      :content => 'Home')
       }      
        
  end
=begin
  describe "Breadcrumbs at Products page" do
    before { visit products_path }

    it { should have_selector('ul', 
      :class => 'breadcrumb',
      :content => 'Home > Products')
       }      
        
  end
=end  
  describe "Breadcrumbs at Recruit page" do
    before { visit recruit_path }

    it { should have_selector('ul', 
      :class => 'breadcrumb',
      :href => root_path,
      :href => recruit_path,
      :content => 'Home > Recruit')
       }      
        
  end
  
  describe "Breadcrumbs at Links page" do
    before { visit link_path }

    it { should have_selector('ul', 
      :class => 'breadcrumb',
      :href => link_path,
      :content => 'Home > Links')
       }      
        
  end
end
