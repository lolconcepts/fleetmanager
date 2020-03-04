class CreateInspections < ActiveRecord::Migration[5.2]
  def up
    create_table :inspections do |t|
      t.string :description
      t.text :instructions
      t.references :inspection_type, foreign_key: true
      t.boolean :active, default: true

      t.timestamps
    end
    Inspection.create(:description => "Fluid Leaks Under Bus",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Loose wires, hoses,connections in engine compartment",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Oil Level",
    				  :inspection_type_id => 3)
    Inspection.create(:description => "Radiator Coolant Level",
    				  :inspection_type_id => 3)
    Inspection.create(:description => "Battery Charge",
    				  :inspection_type_id => 3)
    Inspection.create(:description => "Transmission Fluid Level",
    				  :inspection_type_id => 3)
    Inspection.create(:description => "Unusual Engine Noise",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Guages / Warning Lights",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Switches",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Horn",
    				  :inspection_type_id => 2)

    Inspection.create(:description => "Fans / Defrosters",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Wipers / Washers",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Driver's Seat / Belt",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Directional Lights",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Parking / Service Brake",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Clutch",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Steering",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Wheelchair Lift",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Inside / Outside Mirrors",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Brake Pedal / Warning Lights",
    				  :inspection_type_id => 1)

    Inspection.create(:description => "Service Door Operation",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Emergency Equipment Present",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "First Aid Kit Present",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Entrance Steps Clear",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Interior Cleanliness",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Floor Cleanliness",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Emergency Door Buzzer",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Headlights / Flashers",
    				  :inspection_type_id => 2)
    Inspection.create(:description => "Right Front Tire / Wheel",
    				  :inspection_type_id => 4)
    Inspection.create(:description => "Front of Bus / Windshield",
    				  :inspection_type_id => 4)

    Inspection.create(:description => "Left Front Tire / Wheel",
    				  :inspection_type_id => 4)
    Inspection.create(:description => "Exhaust System",
    				  :inspection_type_id => 1)
    Inspection.create(:description => "Left Side of Bus / Windows / Lights",
    				  :inspection_type_id => 4)
    Inspection.create(:description => "Left Rear Tire / Wheel",
    				  :inspection_type_id => 4)
    Inspection.create(:description => "Rear of Bus / Windows / Lights",
    				  :inspection_type_id => 4)
     Inspection.create(:description => "Right Rear Tire / Wheel",
    				  :inspection_type_id => 4)

  end
  def down
  	drop_table :inspections
  end
end
