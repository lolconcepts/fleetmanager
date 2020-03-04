require "application_system_test_case"

class InspectionTypesTest < ApplicationSystemTestCase
  setup do
    @inspection_type = inspection_types(:one)
  end

  test "visiting the index" do
    visit inspection_types_url
    assert_selector "h1", text: "Inspection Types"
  end

  test "creating a Inspection type" do
    visit inspection_types_url
    click_on "New Inspection Type"

    fill_in "Description", with: @inspection_type.description
    click_on "Create Inspection type"

    assert_text "Inspection type was successfully created"
    click_on "Back"
  end

  test "updating a Inspection type" do
    visit inspection_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @inspection_type.description
    click_on "Update Inspection type"

    assert_text "Inspection type was successfully updated"
    click_on "Back"
  end

  test "destroying a Inspection type" do
    visit inspection_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inspection type was successfully destroyed"
  end
end
