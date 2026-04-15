require "application_system_test_case"

class BowPortionsTest < ApplicationSystemTestCase
  setup do
    @bow_portion = bow_portions(:one)
  end

  test "visiting the index" do
    visit bow_portions_url
    assert_selector "h1", text: "Bow portions"
  end

  test "should create bow portion" do
    visit bow_portions_url
    click_on "New bow portion"

    fill_in "Name", with: @bow_portion.name
    click_on "Create Bow portion"

    assert_text "Bow portion was successfully created"
    click_on "Back"
  end

  test "should update Bow portion" do
    visit bow_portion_url(@bow_portion)
    click_on "Edit this bow portion", match: :first

    fill_in "Name", with: @bow_portion.name
    click_on "Update Bow portion"

    assert_text "Bow portion was successfully updated"
    click_on "Back"
  end

  test "should destroy Bow portion" do
    visit bow_portion_url(@bow_portion)
    click_on "Destroy this bow portion", match: :first

    assert_text "Bow portion was successfully destroyed"
  end
end
