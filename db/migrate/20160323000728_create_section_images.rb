class CreateSectionImages < ActiveRecord::Migration
  def change
    create_table :section_images do |t|
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
