class AddInternalNoteToReplies < ActiveRecord::Migration
  def change
    add_column :brimir_replies, :internal, :boolean, default: false, null: false
  end
end
