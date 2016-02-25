class SetCorrectDefaultContentTypes < ActiveRecord::Migration
  def change
    change_column_default :brimir_replies, :content_type, 'html'
  end
end
