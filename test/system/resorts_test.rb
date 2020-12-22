require "application_system_test_case"

class ResortsTest < ApplicationSystemTestCase
  setup do
    @resort = resorts(:one)
  end

  test "visiting the index" do
    visit resorts_url
    assert_selector "h1", text: "Resorts"
  end

  test "creating a Resort" do
    visit resorts_url
    click_on "New Resort"

    fill_in "Herm parking", with: @resort.herm_parking
    fill_in "Lift 1", with: @resort.lift_1
    fill_in "Lift 2", with: @resort.lift_2
    fill_in "Lift 3", with: @resort.lift_3
    fill_in "Main parking", with: @resort.main_parking
    fill_in "Name", with: @resort.name
    fill_in "Snow fall", with: @resort.snow_fall
    click_on "Create Resort"

    assert_text "Resort was successfully created"
    click_on "Back"
  end

  test "updating a Resort" do
    visit resorts_url
    click_on "Edit", match: :first

    fill_in "Herm parking", with: @resort.herm_parking
    fill_in "Lift 1", with: @resort.lift_1
    fill_in "Lift 2", with: @resort.lift_2
    fill_in "Lift 3", with: @resort.lift_3
    fill_in "Main parking", with: @resort.main_parking
    fill_in "Name", with: @resort.name
    fill_in "Snow fall", with: @resort.snow_fall
    click_on "Update Resort"

    assert_text "Resort was successfully updated"
    click_on "Back"
  end

  test "destroying a Resort" do
    visit resorts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resort was successfully destroyed"
  end
end
