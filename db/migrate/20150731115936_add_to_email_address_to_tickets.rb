class AddToEmailAddressToTickets < ActiveRecord::Migration
  def change
    add_column :brimir_tickets, :to_email_address_id, :integer

    add_index :brimir_tickets, :to_email_address_id
  end
end
