class AddAssigneeToTicket < ActiveRecord::Migration
  def change
    add_column :brimir_tickets, :assignee_id, :integer

    add_index :brimir_tickets, :assignee_id
  end
end
