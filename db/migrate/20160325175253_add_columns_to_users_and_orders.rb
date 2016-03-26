class AddColumnsToUsersAndOrders < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :orders, :status, :integer
  end
end
