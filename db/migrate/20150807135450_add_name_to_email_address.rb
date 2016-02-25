class AddNameToEmailAddress < ActiveRecord::Migration
  def change
    add_column :brimir_email_addresses, :name, :string
  end
end
