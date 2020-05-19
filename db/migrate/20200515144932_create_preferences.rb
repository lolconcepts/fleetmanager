class CreatePreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :preferences do |t|
      t.boolean :collect_images

      t.timestamps
    end
  end
end
