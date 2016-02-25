class AddContentTypeToReplies < ActiveRecord::Migration
  def change
    add_column :brimir_replies, :content_type, :text
    add_column :brimir_tickets, :content_type, :text
  end
end
