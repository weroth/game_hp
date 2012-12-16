namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "millenia_admin",
                         email: "millenia@mirai.org",
                         password: "millenia",
                         password_confirmation: "millenia")
    admin.toggle!(:admin)
    
    
    
  end
end