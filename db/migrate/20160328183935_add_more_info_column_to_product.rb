class AddMoreInfoColumnToProduct < ActiveRecord::Migration
  def change
    add_column :products, :more_info_link, :text
  end
end
