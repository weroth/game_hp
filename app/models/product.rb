class Product < ActiveRecord::Base
  attr_accessible :title, :description, :platform, :release_date, :genre, :user_id
  #belongs_to :user
      
  validates :title, presence: true, length: { minimum: 5}
  validates :description, presence: true, length: { maximum: 250}
  validates :platform, presence: true, length: { minimum: 4}
  validates :release_date, presence: true, length: { maximum: 20}
  validates :genre, presence: true, length: { maximum: 10}
  
  validates :user_id, presence: true  
end
