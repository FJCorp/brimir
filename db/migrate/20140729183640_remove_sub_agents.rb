class RemoveSubAgents < ActiveRecord::Migration
  def up
    # convert sub agents to normal customers
    Brimir::User.where.not(incoming_address: nil).each do |user|

      Brimir::Ticket.where(to: user.incoming_address).each do |ticket|
        label = Brimir::Label.where(name: user.incoming_address).first_or_create!

        unless ticket.label_ids.include?(label.id)
          ticket.labels << label
        end
        unless user.label_ids.include?(label.id)
          user.labels << label
        end
      end

      user.agent = false
      user.save! validates: false
    end

    remove_column :brimir_users, :incoming_address
    remove_column :brimir_tickets, :to
  end

  def down
    add_column :brimir_users, :incoming_address, :string
    add_column :brimir_tickets, :to, :string
  end
end
