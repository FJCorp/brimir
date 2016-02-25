class CreateTenants < ActiveRecord::Migration
  def up
    if Brimir::Tenant.postgresql?
      old = Brimir::Tenant.connection.schema_search_path
      Brimir::Tenant.connection.schema_search_path = 'public'
    end

    unless table_exists? :brimir_tenants
      create_table :brimir_tenants do |t|
        t.string :domain
        t.string :from

        t.timestamps null: false
      end
    end

    if Brimir::Tenant.postgresql?
      Brimir::Tenant.connection.schema_search_path = old
    end
  end

  def down
    if Brimir::Tenant.postgresql?
      old = Brimir::Tenant.connection.schema_search_path
      Brimir::Tenant.connection.schema_search_path = 'public'
    end

    if table_exists? :brimir_tenants
      drop_table :brimir_tenants
    end

    if Brimir::Tenant.postgresql?
      Brimir::Tenant.connection.schema_search_path = old
    end
  end
end
