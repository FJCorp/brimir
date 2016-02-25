class CreateTickets < ActiveRecord::Migration
  def change
    create_table :brimir_tickets do |t|
      t.string :from
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
