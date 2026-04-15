require "application_system_test_case"

class BowPreciseLocationsTest < ApplicationSystemTestCase
  setup do
    @bow_precise_location = bow_precise_locations(:one)
  end

  test "visiting the index" do
    visit bow_precise_locations_url
    assert_selector "h1", text: "Bow precise locations"
  end

  test "should create bow precise location" do
    visit bow_precise_locations_url
    click_on "New bow precise location"

    fill_in "Name", with: @bow_precise_location.name
    click_on "Create Bow precise location"

    assert_text "Bow precise location was successfully created"
    click_on "Back"
  end

  test "should update Bow precise location" do
    visit bow_precise_location_url(@bow_precise_location)
    click_on "Edit this bow precise location", match: :first

    fill_in "Name", with: @bow_precise_location.name
    click_on "Update Bow precise location"

    assert_text "Bow precise location was successfully updated"
    click_on "Back"
  end

  test "should destroy Bow precise location" do
    visit bow_precise_location_url(@bow_precise_location)
    click_on "Destroy this bow precise location", match: :first

    assert_text "Bow precise location was successfully destroyed"
  end
end
