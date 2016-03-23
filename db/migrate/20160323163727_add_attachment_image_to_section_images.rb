class AddAttachmentImageToSectionImages < ActiveRecord::Migration
  def self.up
    change_table :section_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :section_images, :image
  end
end
