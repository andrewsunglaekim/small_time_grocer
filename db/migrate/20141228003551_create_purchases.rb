class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :deal_id
      t.integer :user_id
      t.integer :total_purchases

      t.timestamps null: false
    end
  end
end
