class Order < ActiveRecord::Base
  validates_presence_of :room, :mobile
  validates_format_of :mobile, :with => /^[\s\d]{6,14}$/, :allow_blank => true
  
  has_many :items
  has_many :products, :through => :items
  
  protected
  
  def validate
    errors.add_to_base("You haven't ordered anything!") if products.empty? # Check we have a basket full of stuff
  end
end
