class Product < ActiveRecord::Base
  validates_presence_of :name, :price, :quantity
  validates_numericality_of :quantity, :price, :allow_blank => true
  validates_uniqueness_of :name, :allow_blank => true
  
  has_many :items
  has_many :orders, :through => :items
  
  named_scope :in_stock, :conditions => ["quantity > 0"]
end
