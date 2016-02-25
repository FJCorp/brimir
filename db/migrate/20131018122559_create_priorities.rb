class CreatePriorities < ActiveRecord::Migration
  def change
    create_table :brimir_priorities do |t|
      t.string :name
      t.boolean :default, default: false

      t.timestamps
    end

    add_column :brimir_tickets, :priority_id, :integer
    add_index :brimir_tickets, :priority_id
  end
end
