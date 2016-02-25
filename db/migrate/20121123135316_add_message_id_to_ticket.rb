class AddMessageIdToTicket < ActiveRecord::Migration
  def change
    add_column :brimir_tickets, :message_id, :string
    add_column :brimir_replies, :message_id, :string

    add_index :brimir_tickets, :message_id
    add_index :brimir_replies, :message_id
  end
end
