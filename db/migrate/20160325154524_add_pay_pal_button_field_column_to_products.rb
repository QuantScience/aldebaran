class AddPayPalButtonFieldColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :pay_pal_button, :text
  end
end
