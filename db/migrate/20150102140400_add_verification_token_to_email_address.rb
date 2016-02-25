class AddVerificationTokenToEmailAddress < ActiveRecord::Migration
  def change
    add_column :brimir_email_addresses, :verification_token, :string
  end
end
