class RefactorFromInTickets < ActiveRecord::Migration
  def up
    remove_column :brimir_tickets, :from
    add_column :brimir_tickets, :user_id, :integer

    add_index :brimir_tickets, :user_id
  end

  def down
  end
end
