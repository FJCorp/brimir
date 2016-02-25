class DefaultAgentBooleanToFalse < ActiveRecord::Migration
  def change
    Brimir::User.where(agent: nil).update_all(agent: false)
    change_column :brimir_users, :agent, :boolean, default: false, null: false
  end
end
