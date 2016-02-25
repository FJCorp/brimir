class AddAgentAndSignatureToUser < ActiveRecord::Migration
  def change
    add_column :brimir_users, :agent, :boolean
    add_column :brimir_users, :signature, :text
  end
end
