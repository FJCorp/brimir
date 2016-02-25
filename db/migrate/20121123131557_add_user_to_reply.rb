class AddUserToReply < ActiveRecord::Migration
  def change
    add_column :brimir_replies, :user_id, :integer
    add_index :brimir_replies, :user_id
  end
end
