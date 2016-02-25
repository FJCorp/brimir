class AddDraftToReply < ActiveRecord::Migration
  def change
    add_column :brimir_replies, :draft, :boolean, default: false, null: false
  end
end
