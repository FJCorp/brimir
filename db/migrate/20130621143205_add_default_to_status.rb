class AddDefaultToStatus < ActiveRecord::Migration
  def change
    add_column :brimir_statuses, :default, :boolean, default: false
  end
end
