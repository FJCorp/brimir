class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :brimir_statuses do |t|
      t.string :name

      t.timestamps


    end

    change_table :brimir_tickets do |t|
      t.integer :status_id
    end

    add_index :brimir_tickets, :status_id
  end
end
