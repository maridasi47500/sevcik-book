require "application_system_test_case"

class RhythmicTypesTest < ApplicationSystemTestCase
  setup do
    @rhythmic_type = rhythmic_types(:one)
  end

  test "visiting the index" do
    visit rhythmic_types_url
    assert_selector "h1", text: "Rhythmic types"
  end

  test "should create rhythmic type" do
    visit rhythmic_types_url
    click_on "New rhythmic type"

    fill_in "Name", with: @rhythmic_type.name
    click_on "Create Rhythmic type"

    assert_text "Rhythmic type was successfully created"
    click_on "Back"
  end

  test "should update Rhythmic type" do
    visit rhythmic_type_url(@rhythmic_type)
    click_on "Edit this rhythmic type", match: :first

    fill_in "Name", with: @rhythmic_type.name
    click_on "Update Rhythmic type"

    assert_text "Rhythmic type was successfully updated"
    click_on "Back"
  end

  test "should destroy Rhythmic type" do
    visit rhythmic_type_url(@rhythmic_type)
    click_on "Destroy this rhythmic type", match: :first

    assert_text "Rhythmic type was successfully destroyed"
  end
end
