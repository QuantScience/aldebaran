class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :resume
      t.integer :product_type
      t.text :subtitle
      t.integer :price
      t.text :specifications
      t.string :section_title
      t.text :section_paragraph_1
      t.text :section_paragraph_2
      t.integer :quality_1
      t.integer :quality_2
      t.integer :quality_3
      t.integer :quality_4

      t.timestamps null: false
    end
  end
end
