class AddPerPageToUsers < ActiveRecord::Migration
  def change
    add_column :brimir_users, :per_page, :integer, default: 30, null: false
  end
end
