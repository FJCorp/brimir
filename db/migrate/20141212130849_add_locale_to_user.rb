class AddLocaleToUser < ActiveRecord::Migration
  def change
    add_column :brimir_users, :locale, :string
  end
end
