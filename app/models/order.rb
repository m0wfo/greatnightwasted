class Order < ActiveRecord::Base
  validates_presence_of :room, :mobile
  validates_format_of :mobile, :with => /^[\s\d]{6,14}$/, :allow_blank => true
  
  has_many :items
  has_many :products, :through => :items
  
  after_save :decrement_product_quantities
  
  protected
  
  def validate
    errors.add_to_base("You haven't ordered anything!") if products.empty? # Check we have a basket full of stuff
  end
  
  def decrement_product_quantities
    products.each { |product| product.decrement(:quantity) }
  end
end
