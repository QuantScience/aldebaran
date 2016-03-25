class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :shopping_time
      t.string :customer_id
      t.integer :trading_software
      t.boolean :accepts_disclaimer
      t.string :unique_code

      t.timestamps null: false
    end
  end
end
