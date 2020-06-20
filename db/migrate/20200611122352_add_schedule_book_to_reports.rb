class AddScheduleBookToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :schedule_book, :boolean, default: false
  end
end
