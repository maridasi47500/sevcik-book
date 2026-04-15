require "application_system_test_case"

class BowLocationsTest < ApplicationSystemTestCase
  setup do
    @bow_location = bow_locations(:one)
  end

  test "visiting the index" do
    visit bow_locations_url
    assert_selector "h1", text: "Bow locations"
  end

  test "should create bow location" do
    visit bow_locations_url
    click_on "New bow location"

    fill_in "Name", with: @bow_location.name
    click_on "Create Bow location"

    assert_text "Bow location was successfully created"
    click_on "Back"
  end

  test "should update Bow location" do
    visit bow_location_url(@bow_location)
    click_on "Edit this bow location", match: :first

    fill_in "Name", with: @bow_location.name
    click_on "Update Bow location"

    assert_text "Bow location was successfully updated"
    click_on "Back"
  end

  test "should destroy Bow location" do
    visit bow_location_url(@bow_location)
    click_on "Destroy this bow location", match: :first

    assert_text "Bow location was successfully destroyed"
  end
end
