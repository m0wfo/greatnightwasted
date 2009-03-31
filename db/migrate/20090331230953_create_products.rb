class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name, :null => false
      t.decimal :price, :null => false
      t.integer :quantity, :null => false, :default => 0 
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
