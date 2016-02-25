class ExplicitlySetLimitsContentTicketsReplies < ActiveRecord::Migration
  def change
    # make sure psql and mysql have the same limits
    change_column :brimir_tickets, :content, :text, limit: (1.gigabyte - 1)
    change_column :brimir_replies, :content, :text, limit: (1.gigabyte - 1)
  end
end
