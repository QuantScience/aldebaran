class AddThreePricesToProductModel < ActiveRecord::Migration
  def change
    add_column :products, :price_one_year, :integer
    add_column :products, :price_open_source, :integer
  end
end
