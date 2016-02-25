class AddFileToAttachment < ActiveRecord::Migration
  def change
    change_table :brimir_attachments do |t|
      t.attachment :file
    end
  end
end
