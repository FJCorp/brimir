class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :brimir_attachments do |t|
      t.references :attachable
      t.string :attachable_type

      t.timestamps
    end
    add_index :brimir_attachments, :attachable_id
  end
end
