class AddQuotePreferenceToUser < ActiveRecord::Migration
  def change
    add_column :brimir_users, :include_quote_in_reply, :boolean, default: true, null: false
  end
end
