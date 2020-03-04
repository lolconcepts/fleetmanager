require 'test_helper'

class DvirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dvir = dvirs(:one)
  end

  test "should get index" do
    get dvirs_url
    assert_response :success
  end

  test "should get new" do
    get new_dvir_url
    assert_response :success
  end

  test "should create dvir" do
    assert_difference('Dvir.count') do
      post dvirs_url, params: { dvir: { company_id: @dvir.company_id, end_mileage: @dvir.end_mileage, location: @dvir.location, odometer: @dvir.odometer, start_mileage: @dvir.start_mileage, vehicle_id: @dvir.vehicle_id } }
    end

    assert_redirected_to dvir_url(Dvir.last)
  end

  test "should show dvir" do
    get dvir_url(@dvir)
    assert_response :success
  end

  test "should get edit" do
    get edit_dvir_url(@dvir)
    assert_response :success
  end

  test "should update dvir" do
    patch dvir_url(@dvir), params: { dvir: { company_id: @dvir.company_id, end_mileage: @dvir.end_mileage, location: @dvir.location, odometer: @dvir.odometer, start_mileage: @dvir.start_mileage, vehicle_id: @dvir.vehicle_id } }
    assert_redirected_to dvir_url(@dvir)
  end

  test "should destroy dvir" do
    assert_difference('Dvir.count', -1) do
      delete dvir_url(@dvir)
    end

    assert_redirected_to dvirs_url
  end
end
