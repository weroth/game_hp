require 'spec_helper'

describe Product do
subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }

  describe "micropost creation" do
    before { visit root_path }

    describe "with invalid information" do

      it "should not create a product" do
        expect { click_button "Create" }.not_to change(Product, :count)
      end

      describe "error messages" do
        before { click_button "Create" }
        it { should have_content('error') } 
      end
    end

    describe "with valid information" do

      before { fill_in 'product_title', with: "Lorem ipsum" }
      it "should create a product" do
        expect { click_button "Create" }.to change(Product, :count).by(1)
      end
    end
  end
end
