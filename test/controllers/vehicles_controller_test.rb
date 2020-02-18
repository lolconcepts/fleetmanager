require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post vehicles_url, params: { vehicle: { VIN: @vehicle.VIN, color: @vehicle.color, cost_meter: @vehicle.cost_meter, current_meter: @vehicle.current_meter, current_meter_date: @vehicle.current_meter_date, fuel_costs: @vehicle.fuel_costs, fuel_type: @vehicle.fuel_type, group: @vehicle.group, license_plate: @vehicle.license_plate, make: @vehicle.make, meter_usage: @vehicle.meter_usage, model: @vehicle.model, number: @vehicle.number, other_costs: @vehicle.other_costs, ownership: @vehicle.ownership, purchase_date: @vehicle.purchase_date, purchase_price: @vehicle.purchase_price, registration_state: @vehicle.registration_state, service_costs: @vehicle.service_costs, status: @vehicle.status, trim: @vehicle.trim, type: @vehicle.type, warranty_expiration: @vehicle.warranty_expiration, year: @vehicle.year } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { VIN: @vehicle.VIN, color: @vehicle.color, cost_meter: @vehicle.cost_meter, current_meter: @vehicle.current_meter, current_meter_date: @vehicle.current_meter_date, fuel_costs: @vehicle.fuel_costs, fuel_type: @vehicle.fuel_type, group: @vehicle.group, license_plate: @vehicle.license_plate, make: @vehicle.make, meter_usage: @vehicle.meter_usage, model: @vehicle.model, number: @vehicle.number, other_costs: @vehicle.other_costs, ownership: @vehicle.ownership, purchase_date: @vehicle.purchase_date, purchase_price: @vehicle.purchase_price, registration_state: @vehicle.registration_state, service_costs: @vehicle.service_costs, status: @vehicle.status, trim: @vehicle.trim, type: @vehicle.type, warranty_expiration: @vehicle.warranty_expiration, year: @vehicle.year } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end
