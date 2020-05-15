class AddConditionNotesToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :condition_notes, :string
  end
end
