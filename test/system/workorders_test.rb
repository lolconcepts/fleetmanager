require "application_system_test_case"

class WorkordersTest < ApplicationSystemTestCase
  setup do
    @workorder = workorders(:one)
  end

  test "visiting the index" do
    visit workorders_url
    assert_selector "h1", text: "Workorders"
  end

  test "creating a Workorder" do
    visit workorders_url
    click_on "New Workorder"

    fill_in "Description", with: @workorder.description
    fill_in "Labor subtotal", with: @workorder.labor_subtotal
    fill_in "Parts subtotal", with: @workorder.parts_subtotal
    fill_in "Status", with: @workorder.status_id
    fill_in "Technician", with: @workorder.technician_id
    fill_in "Total", with: @workorder.total
    fill_in "Vehicle", with: @workorder.vehicle_id
    fill_in "Vehicle miles in", with: @workorder.vehicle_miles_in
    fill_in "Work end", with: @workorder.work_end
    fill_in "Work start", with: @workorder.work_start
    click_on "Create Workorder"

    assert_text "Workorder was successfully created"
    click_on "Back"
  end

  test "updating a Workorder" do
    visit workorders_url
    click_on "Edit", match: :first

    fill_in "Description", with: @workorder.description
    fill_in "Labor subtotal", with: @workorder.labor_subtotal
    fill_in "Parts subtotal", with: @workorder.parts_subtotal
    fill_in "Status", with: @workorder.status_id
    fill_in "Technician", with: @workorder.technician_id
    fill_in "Total", with: @workorder.total
    fill_in "Vehicle", with: @workorder.vehicle_id
    fill_in "Vehicle miles in", with: @workorder.vehicle_miles_in
    fill_in "Work end", with: @workorder.work_end
    fill_in "Work start", with: @workorder.work_start
    click_on "Update Workorder"

    assert_text "Workorder was successfully updated"
    click_on "Back"
  end

  test "destroying a Workorder" do
    visit workorders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Workorder was successfully destroyed"
  end
end
