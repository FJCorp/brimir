class ChangeContentType < ActiveRecord::Migration
  def change
    change_column :brimir_replies, :content_type, :string, default: 'markdown'
    change_column :brimir_tickets, :content_type, :string, default: 'html'
  end
end
