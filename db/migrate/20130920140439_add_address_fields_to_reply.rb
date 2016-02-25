class AddAddressFieldsToReply < ActiveRecord::Migration
  def change
    add_column :brimir_replies, :to, :string
    add_column :brimir_replies, :cc, :string
    add_column :brimir_replies, :bcc, :string
  end
end
