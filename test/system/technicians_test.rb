require "application_system_test_case"

class TechniciansTest < ApplicationSystemTestCase
  setup do
    @technician = technicians(:one)
  end

  test "visiting the index" do
    visit technicians_url
    assert_selector "h1", text: "Technicians"
  end

  test "creating a Technician" do
    visit technicians_url
    click_on "New Technician"

    check "Active" if @technician.active
    fill_in "Avatar", with: @technician.avatar
    fill_in "Fname", with: @technician.fname
    fill_in "Lname", with: @technician.lname
    click_on "Create Technician"

    assert_text "Technician was successfully created"
    click_on "Back"
  end

  test "updating a Technician" do
    visit technicians_url
    click_on "Edit", match: :first

    check "Active" if @technician.active
    fill_in "Avatar", with: @technician.avatar
    fill_in "Fname", with: @technician.fname
    fill_in "Lname", with: @technician.lname
    click_on "Update Technician"

    assert_text "Technician was successfully updated"
    click_on "Back"
  end

  test "destroying a Technician" do
    visit technicians_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Technician was successfully destroyed"
  end
end
