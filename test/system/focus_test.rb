require "application_system_test_case"

class FocusTest < ApplicationSystemTestCase
  setup do
    @focu = focus(:one)
  end

  test "visiting the index" do
    visit focus_url
    assert_selector "h1", text: "Focus"
  end

  test "should create focu" do
    visit focus_url
    click_on "New focu"

    fill_in "Name", with: @focu.name
    click_on "Create Focu"

    assert_text "Focu was successfully created"
    click_on "Back"
  end

  test "should update Focu" do
    visit focu_url(@focu)
    click_on "Edit this focu", match: :first

    fill_in "Name", with: @focu.name
    click_on "Update Focu"

    assert_text "Focu was successfully updated"
    click_on "Back"
  end

  test "should destroy Focu" do
    visit focu_url(@focu)
    click_on "Destroy this focu", match: :first

    assert_text "Focu was successfully destroyed"
  end
end
