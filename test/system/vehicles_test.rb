require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "creating a Vehicle" do
    visit vehicles_url
    click_on "New Vehicle"

    fill_in "Vin", with: @vehicle.VIN
    fill_in "Color", with: @vehicle.color
    fill_in "Cost meter", with: @vehicle.cost_meter
    fill_in "Current meter", with: @vehicle.current_meter
    fill_in "Current meter date", with: @vehicle.current_meter_date
    fill_in "Fuel costs", with: @vehicle.fuel_costs
    fill_in "Fuel type", with: @vehicle.fuel_type
    fill_in "Group", with: @vehicle.group
    fill_in "License plate", with: @vehicle.license_plate
    fill_in "Make", with: @vehicle.make
    fill_in "Meter usage", with: @vehicle.meter_usage
    fill_in "Model", with: @vehicle.model
    fill_in "Number", with: @vehicle.number
    fill_in "Other costs", with: @vehicle.other_costs
    fill_in "Ownership", with: @vehicle.ownership
    fill_in "Purchase date", with: @vehicle.purchase_date
    fill_in "Purchase price", with: @vehicle.purchase_price
    fill_in "Registration state", with: @vehicle.registration_state
    fill_in "Service costs", with: @vehicle.service_costs
    fill_in "Status", with: @vehicle.status
    fill_in "Trim", with: @vehicle.trim
    fill_in "Type", with: @vehicle.type
    fill_in "Warranty expiration", with: @vehicle.warranty_expiration
    fill_in "Year", with: @vehicle.year
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "updating a Vehicle" do
    visit vehicles_url
    click_on "Edit", match: :first

    fill_in "Vin", with: @vehicle.VIN
    fill_in "Color", with: @vehicle.color
    fill_in "Cost meter", with: @vehicle.cost_meter
    fill_in "Current meter", with: @vehicle.current_meter
    fill_in "Current meter date", with: @vehicle.current_meter_date
    fill_in "Fuel costs", with: @vehicle.fuel_costs
    fill_in "Fuel type", with: @vehicle.fuel_type
    fill_in "Group", with: @vehicle.group
    fill_in "License plate", with: @vehicle.license_plate
    fill_in "Make", with: @vehicle.make
    fill_in "Meter usage", with: @vehicle.meter_usage
    fill_in "Model", with: @vehicle.model
    fill_in "Number", with: @vehicle.number
    fill_in "Other costs", with: @vehicle.other_costs
    fill_in "Ownership", with: @vehicle.ownership
    fill_in "Purchase date", with: @vehicle.purchase_date
    fill_in "Purchase price", with: @vehicle.purchase_price
    fill_in "Registration state", with: @vehicle.registration_state
    fill_in "Service costs", with: @vehicle.service_costs
    fill_in "Status", with: @vehicle.status
    fill_in "Trim", with: @vehicle.trim
    fill_in "Type", with: @vehicle.type
    fill_in "Warranty expiration", with: @vehicle.warranty_expiration
    fill_in "Year", with: @vehicle.year
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Vehicle" do
    visit vehicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vehicle was successfully destroyed"
  end
end
