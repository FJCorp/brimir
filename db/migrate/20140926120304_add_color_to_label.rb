class AddColorToLabel < ActiveRecord::Migration
  def change
    add_column :brimir_labels, :color, :string
    Brimir::Label.all.each do |label|
      label.assign_random_color
      label.save!
    end
  end
end
