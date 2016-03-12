class CreateFaqItems < ActiveRecord::Migration
  def change
    create_table :faq_items do |t|
      t.text :question
      t.text :answer

      t.timestamps null: false
    end
  end
end
