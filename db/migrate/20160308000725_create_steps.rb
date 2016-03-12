class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :title
      t.text :content
      t.integer :step_type

      t.timestamps null: false
    end
  end
end
