require "application_system_test_case"

class BowTechniquesTest < ApplicationSystemTestCase
  setup do
    @bow_technique = bow_techniques(:one)
  end

  test "visiting the index" do
    visit bow_techniques_url
    assert_selector "h1", text: "Bow techniques"
  end

  test "should create bow technique" do
    visit bow_techniques_url
    click_on "New bow technique"

    fill_in "Name", with: @bow_technique.name
    click_on "Create Bow technique"

    assert_text "Bow technique was successfully created"
    click_on "Back"
  end

  test "should update Bow technique" do
    visit bow_technique_url(@bow_technique)
    click_on "Edit this bow technique", match: :first

    fill_in "Name", with: @bow_technique.name
    click_on "Update Bow technique"

    assert_text "Bow technique was successfully updated"
    click_on "Back"
  end

  test "should destroy Bow technique" do
    visit bow_technique_url(@bow_technique)
    click_on "Destroy this bow technique", match: :first

    assert_text "Bow technique was successfully destroyed"
  end
end
