class Order < ActiveRecord::Base
  belongs_to(:customer)
  has_many :pumpkins, through: :line_items
  has_many :line_items

  
end