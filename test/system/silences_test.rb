require "application_system_test_case"

class SilencesTest < ApplicationSystemTestCase
  setup do
    @silence = silences(:one)
  end

  test "visiting the index" do
    visit silences_url
    assert_selector "h1", text: "Silences"
  end

  test "should create silence" do
    visit silences_url
    click_on "New silence"

    fill_in "Name", with: @silence.name
    click_on "Create Silence"

    assert_text "Silence was successfully created"
    click_on "Back"
  end

  test "should update Silence" do
    visit silence_url(@silence)
    click_on "Edit this silence", match: :first

    fill_in "Name", with: @silence.name
    click_on "Update Silence"

    assert_text "Silence was successfully updated"
    click_on "Back"
  end

  test "should destroy Silence" do
    visit silence_url(@silence)
    click_on "Destroy this silence", match: :first

    assert_text "Silence was successfully destroyed"
  end
end
