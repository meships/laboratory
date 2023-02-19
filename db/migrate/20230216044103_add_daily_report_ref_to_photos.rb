class AddDailyReportRefToPhotos < ActiveRecord::Migration[6.1]
  def change
    add_reference :photos, :daily_report, null: false, foreign_key: true
  end
end
