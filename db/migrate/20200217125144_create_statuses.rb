class CreateStatuses < ActiveRecord::Migration[5.2]
  def up
    create_table :statuses do |t|
      t.string :description

      t.timestamps
    end
    Status.create(:description => "New")
    Status.create(:description => "Assigned")
    Status.create(:description => "In-Progress")
    Status.create(:description => "On-Hold")
    Status.create(:description => "Completed")

  end
  def down
  	drop_table :statuses
  end
end
