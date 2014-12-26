class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
    	t.belongs_to :item
  		t.belongs_to :vendor
  		t.integer :price
  		
  		t.timestamps null: false
    end
  end
end
