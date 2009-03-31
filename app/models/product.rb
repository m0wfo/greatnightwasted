class Product < ActiveRecord::Base
  validates_presence_of :name, :price, :quantity
  validates_numericality_of :quantity, :price, :allow_blank => true
  validates_uniqueness_of :name, :allow_blank => true
end
