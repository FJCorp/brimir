class AddTicketToReply < ActiveRecord::Migration
  def change
    add_column :brimir_replies, :ticket_id, :integer
    add_index :brimir_replies, :ticket_id
  end
end
