namespace :brimir do

  # migrate all tenant schema
  task migrate: :environment do
    if Brimir::Tenant.connection.table_exists? :tenants
      schemas = Brimir::Tenant.pluck(:domain)

      version = ENV['VERSION'] ? ENV['VERSION'].to_i : nil

      last = schemas.shift

      schemas.each do |schema|
        print "Migrating #{schema}\n"

        Brimir::Tenant.current_domain = schema
        ActiveRecord::Migrator.migrate('db/migrate', version)

      end

      Brimir::Tenant.current_domain = last

      print "Migrating #{last}\n"
    end
  end

end

Rake::Task['db:migrate'].enhance(['brimir:migrate'])
