require 'test_helper'

class WorkordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workorder = workorders(:one)
  end

  test "should get index" do
    get workorders_url
    assert_response :success
  end

  test "should get new" do
    get new_workorder_url
    assert_response :success
  end

  test "should create workorder" do
    assert_difference('Workorder.count') do
      post workorders_url, params: { workorder: { description: @workorder.description, labor_subtotal: @workorder.labor_subtotal, parts_subtotal: @workorder.parts_subtotal, status_id: @workorder.status_id, technician_id: @workorder.technician_id, total: @workorder.total, vehicle_id: @workorder.vehicle_id, vehicle_miles_in: @workorder.vehicle_miles_in, work_end: @workorder.work_end, work_start: @workorder.work_start } }
    end

    assert_redirected_to workorder_url(Workorder.last)
  end

  test "should show workorder" do
    get workorder_url(@workorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_workorder_url(@workorder)
    assert_response :success
  end

  test "should update workorder" do
    patch workorder_url(@workorder), params: { workorder: { description: @workorder.description, labor_subtotal: @workorder.labor_subtotal, parts_subtotal: @workorder.parts_subtotal, status_id: @workorder.status_id, technician_id: @workorder.technician_id, total: @workorder.total, vehicle_id: @workorder.vehicle_id, vehicle_miles_in: @workorder.vehicle_miles_in, work_end: @workorder.work_end, work_start: @workorder.work_start } }
    assert_redirected_to workorder_url(@workorder)
  end

  test "should destroy workorder" do
    assert_difference('Workorder.count', -1) do
      delete workorder_url(@workorder)
    end

    assert_redirected_to workorders_url
  end
end
