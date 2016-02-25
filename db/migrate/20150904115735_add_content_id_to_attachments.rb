class AddContentIdToAttachments < ActiveRecord::Migration
  def change
    add_column :brimir_attachments, :content_id, :string
  end
end
