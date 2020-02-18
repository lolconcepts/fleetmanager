class AddFieldsToTechnician < ActiveRecord::Migration[5.2]
  def change
    add_column :technicians, :group, :string
    add_column :technicians, :start_date, :datetime
    add_column :technicians, :leave_date, :datetime
    add_column :technicians, :email, :string
    add_column :technicians, :vehicle_operator, :boolean
    add_column :technicians, :hourly_labor_rate_cents, :integer
  end
end
