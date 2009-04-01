class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items, :id => false do |t|
      t.belongs_to :order, :null => false
      t.belongs_to :product, :null => false
    end
  end

  def self.down
    drop_table :items
  end
end
