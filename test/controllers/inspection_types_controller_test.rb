require 'test_helper'

class InspectionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspection_type = inspection_types(:one)
  end

  test "should get index" do
    get inspection_types_url
    assert_response :success
  end

  test "should get new" do
    get new_inspection_type_url
    assert_response :success
  end

  test "should create inspection_type" do
    assert_difference('InspectionType.count') do
      post inspection_types_url, params: { inspection_type: { description: @inspection_type.description } }
    end

    assert_redirected_to inspection_type_url(InspectionType.last)
  end

  test "should show inspection_type" do
    get inspection_type_url(@inspection_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_inspection_type_url(@inspection_type)
    assert_response :success
  end

  test "should update inspection_type" do
    patch inspection_type_url(@inspection_type), params: { inspection_type: { description: @inspection_type.description } }
    assert_redirected_to inspection_type_url(@inspection_type)
  end

  test "should destroy inspection_type" do
    assert_difference('InspectionType.count', -1) do
      delete inspection_type_url(@inspection_type)
    end

    assert_redirected_to inspection_types_url
  end
end
