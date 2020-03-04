class CreateIssues < ActiveRecord::Migration[5.2]
  def up
    create_table :issues do |t|
      t.references :vehicle, foreign_key: true
      t.references :inspection, foreign_key: true
      t.string :evidence

      t.timestamps
    end
  end
  def down
  	drop_table :issues
  end
end
