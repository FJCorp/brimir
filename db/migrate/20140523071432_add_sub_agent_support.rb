class AddSubAgentSupport < ActiveRecord::Migration
  def change
    add_column :brimir_tickets, :to, :string, nil: true, default: nil
    add_column :brimir_users, :incoming_address, :string, nil: true, default: nil
    add_index :brimir_tickets, :to
  end
end
