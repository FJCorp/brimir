class CreateLabelings < ActiveRecord::Migration
  def change
    create_table :brimir_labelings do |t|
      t.references :label, index: true
      t.references :labelable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :brimir_labelings, [:label_id, :labelable_id, :labelable_type],
        unique: true,
        name: :unique_labeling_label
  end
end
