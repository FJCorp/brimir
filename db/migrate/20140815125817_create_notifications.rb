class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :brimir_notifications do |t|
      t.references :notifiable, polymorphic: true, index: true
      t.references :user, index: true

      t.timestamps
    end
    add_index :brimir_notifications, [:notifiable_id, :notifiable_type, :user_id],
        unique: true,
        name: :unique_notification

    Brimir::Reply.all.each do |reply|
      addresses = []

      addresses += reply.to.to_s.split(',')
      addresses += reply.cc.to_s.split(',')
      addresses += reply.bcc.to_s.split(',')

      addresses.each do |address|
        u = Brimir::User.where(email: address.strip).first_or_initialize

        if u.new_record?
          password_length = 12
          password = Devise.friendly_token.first(password_length)

          u.password = password
          u.password_confirmation = password
        end

        if u.save
          reply.notified_users << u
        end
      end

      reply.save!
    end

    remove_column :brimir_replies, :to
    remove_column :brimir_replies, :cc
    remove_column :brimir_replies, :bcc

  end
end
