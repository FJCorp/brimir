class AddTimeZoneAndLocaleToTenant < ActiveRecord::Migration
  def change
    if Brimir::Tenant.postgresql?
      old = Brimir::Tenant.connection.schema_search_path
      Brimir::Tenant.connection.schema_search_path = 'public'
    end

    unless column_exists? :brimir_tenants, :default_time_zone
      add_column :brimir_tenants, :default_time_zone, :string, default: 'Amsterdam'
      add_column :brimir_tenants, :ignore_user_agent_locale, :boolean, default: false, null: false
      add_column :brimir_tenants, :default_locale, :string, default: 'en'
    end

    if Brimir::Tenant.postgresql?
      Brimir::Tenant.connection.schema_search_path = old
    end

    change_column_default :brimir_users, :time_zone, nil
  end
end
