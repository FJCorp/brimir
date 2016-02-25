class AddTimeZoneToUser < ActiveRecord::Migration
  def change
    add_column :brimir_users, :time_zone, :string, default: 'Amsterdam'
  end
end
