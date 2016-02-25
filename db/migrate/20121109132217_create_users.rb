class CreateUsers < ActiveRecord::Migration
  def change
    create_table :brimir_users do |t|

      t.timestamps
    end
  end
end
