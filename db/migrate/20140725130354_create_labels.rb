class CreateLabels < ActiveRecord::Migration
  def change
    create_table :brimir_labels do |t|
      t.string :name

      t.timestamps
    end
  end
end
