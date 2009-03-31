class Order < ActiveRecord::Base
  validates_presence_of :name, :room, :mobile
end
