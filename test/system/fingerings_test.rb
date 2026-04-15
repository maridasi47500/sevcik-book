require "application_system_test_case"

class FingeringsTest < ApplicationSystemTestCase
  setup do
    @fingering = fingerings(:one)
  end

  test "visiting the index" do
    visit fingerings_url
    assert_selector "h1", text: "Fingerings"
  end

  test "should create fingering" do
    visit fingerings_url
    click_on "New fingering"

    fill_in "Name", with: @fingering.name
    click_on "Create Fingering"

    assert_text "Fingering was successfully created"
    click_on "Back"
  end

  test "should update Fingering" do
    visit fingering_url(@fingering)
    click_on "Edit this fingering", match: :first

    fill_in "Name", with: @fingering.name
    click_on "Update Fingering"

    assert_text "Fingering was successfully updated"
    click_on "Back"
  end

  test "should destroy Fingering" do
    visit fingering_url(@fingering)
    click_on "Destroy this fingering", match: :first

    assert_text "Fingering was successfully destroyed"
  end
end
