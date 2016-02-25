class ReplaceTicketStatusByEnum < ActiveRecord::Migration
  class Brimir::OldStatus < ActiveRecord::Base
    self.table_name = 'brimir_statuses'
    has_many :tickets, foreign_key: 'status_id'
  end

  def change

    add_column :brimir_tickets, :status, :integer, null: false, default: 0

    Brimir::OldStatus.all.each do |status|
      if status.name == 'Deleted'
        new_status = :deleted
      elsif status.name == 'Closed'
        new_status = :closed
      else
        new_status = :open
      end

      status.tickets.each do |t|
        t.status = new_status
        t.save
      end
    end

    remove_column :brimir_tickets, :status_id
    drop_table :brimir_statuses
    add_index :brimir_tickets, :status

  end
end
