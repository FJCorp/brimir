class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :brimir_identities do |t|
      t.references :user
      t.string :uid
      t.string :provider
    end

    add_index :brimir_identities, :user_id
  end
end
