class AddShareDraftsToTenants < ActiveRecord::Migration
  def change
    unless column_exists? :brimir_tenants, :share_drafts
      add_column :brimir_tenants, :share_drafts, :boolean, default: false, nil: false
    end
  end
end
