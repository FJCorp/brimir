class TicketPriorityToEnum < ActiveRecord::Migration
  class Brimir::OldPriority < ActiveRecord::Base
    self.table_name = 'brimir_priorities'
    has_many :tickets, foreign_key: 'priority_id'
  end

  def change
    add_column :brimir_tickets, :priority, :integer, null: false, default: 0

    Brimir::OldPriority.all.each do |priority|
      if priority.name == 'High'
        new_priority = :high
      elsif priority.name == 'Medium'
        new_priority = :medium
      elsif priority.name == 'Low'
        new_priority = :low
      else
        new_priority = :unknown
      end

      priority.tickets.each do |t|
        t.priority = new_priority
        t.save
      end
    end

    remove_column :brimir_tickets, :priority_id
    drop_table :brimir_priorities
    add_index :brimir_tickets, :priority

  end

end
