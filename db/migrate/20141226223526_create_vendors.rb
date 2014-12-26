class CreateVendors < ActiveRecord::Migration
  # migration for vendors table into db
  def change
    create_table :vendors do |t|
    t.string :name

    t.timestamps null:false
    end
  end
end
