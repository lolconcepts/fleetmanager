require "application_system_test_case"

class DvirsTest < ApplicationSystemTestCase
  setup do
    @dvir = dvirs(:one)
  end

  test "visiting the index" do
    visit dvirs_url
    assert_selector "h1", text: "Dvirs"
  end

  test "creating a Dvir" do
    visit dvirs_url
    click_on "New Dvir"

    fill_in "Company", with: @dvir.company_id
    fill_in "End mileage", with: @dvir.end_mileage
    fill_in "Location", with: @dvir.location
    fill_in "Odometer", with: @dvir.odometer
    fill_in "Start mileage", with: @dvir.start_mileage
    fill_in "Vehicle", with: @dvir.vehicle_id
    click_on "Create Dvir"

    assert_text "Dvir was successfully created"
    click_on "Back"
  end

  test "updating a Dvir" do
    visit dvirs_url
    click_on "Edit", match: :first

    fill_in "Company", with: @dvir.company_id
    fill_in "End mileage", with: @dvir.end_mileage
    fill_in "Location", with: @dvir.location
    fill_in "Odometer", with: @dvir.odometer
    fill_in "Start mileage", with: @dvir.start_mileage
    fill_in "Vehicle", with: @dvir.vehicle_id
    click_on "Update Dvir"

    assert_text "Dvir was successfully updated"
    click_on "Back"
  end

  test "destroying a Dvir" do
    visit dvirs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dvir was successfully destroyed"
  end
end
