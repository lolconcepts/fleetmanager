class CreateInspectionTypes < ActiveRecord::Migration[5.2]
  def up
    create_table :inspection_types do |t|
      t.string :description

      t.timestamps
    end
    InspectionType.create(:description => "Visual")
    InspectionType.create(:description => "Mechanical")
    InspectionType.create(:description => "Maintenance")
    InspectionType.create(:description => "Safety")
  end

  def down
  	drop_table :inspection_types
  end
end
