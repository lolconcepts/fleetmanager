class AddNonServiceAffectingChecksToReport < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :tablet, :boolean, default: false
    add_column :reports, :monitor, :boolean, default: false
  end
end
