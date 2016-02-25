class AddNotifyToUsers < ActiveRecord::Migration
  def change
    add_column :brimir_users, :notify, :boolean, default: true
  end
end
