class AddAuthenticationTokenFieldToUsers < ActiveRecord::Migration
  def change
    add_column :brimir_users, :authentication_token, :string
  end
end
