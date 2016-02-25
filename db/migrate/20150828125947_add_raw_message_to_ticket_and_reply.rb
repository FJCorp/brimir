class AddRawMessageToTicketAndReply < ActiveRecord::Migration
  def change
    add_attachment :brimir_tickets, :raw_message
    add_attachment :brimir_replies, :raw_message
  end
end
