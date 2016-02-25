class AddLockedByToTicket < ActiveRecord::Migration
  def change
    add_column :brimir_tickets, :locked_by_id, :integer
    add_column :brimir_tickets, :locked_at, :datetime

    add_index :brimir_tickets, :locked_by_id
  end
end
