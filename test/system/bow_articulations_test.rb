require "application_system_test_case"

class BowArticulationsTest < ApplicationSystemTestCase
  setup do
    @bow_articulation = bow_articulations(:one)
  end

  test "visiting the index" do
    visit bow_articulations_url
    assert_selector "h1", text: "Bow articulations"
  end

  test "should create bow articulation" do
    visit bow_articulations_url
    click_on "New bow articulation"

    fill_in "Name", with: @bow_articulation.name
    click_on "Create Bow articulation"

    assert_text "Bow articulation was successfully created"
    click_on "Back"
  end

  test "should update Bow articulation" do
    visit bow_articulation_url(@bow_articulation)
    click_on "Edit this bow articulation", match: :first

    fill_in "Name", with: @bow_articulation.name
    click_on "Update Bow articulation"

    assert_text "Bow articulation was successfully updated"
    click_on "Back"
  end

  test "should destroy Bow articulation" do
    visit bow_articulation_url(@bow_articulation)
    click_on "Destroy this bow articulation", match: :first

    assert_text "Bow articulation was successfully destroyed"
  end
end
