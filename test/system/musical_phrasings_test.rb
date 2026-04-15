require "application_system_test_case"

class MusicalPhrasingsTest < ApplicationSystemTestCase
  setup do
    @musical_phrasing = musical_phrasings(:one)
  end

  test "visiting the index" do
    visit musical_phrasings_url
    assert_selector "h1", text: "Musical phrasings"
  end

  test "should create musical phrasing" do
    visit musical_phrasings_url
    click_on "New musical phrasing"

    fill_in "Name", with: @musical_phrasing.name
    click_on "Create Musical phrasing"

    assert_text "Musical phrasing was successfully created"
    click_on "Back"
  end

  test "should update Musical phrasing" do
    visit musical_phrasing_url(@musical_phrasing)
    click_on "Edit this musical phrasing", match: :first

    fill_in "Name", with: @musical_phrasing.name
    click_on "Update Musical phrasing"

    assert_text "Musical phrasing was successfully updated"
    click_on "Back"
  end

  test "should destroy Musical phrasing" do
    visit musical_phrasing_url(@musical_phrasing)
    click_on "Destroy this musical phrasing", match: :first

    assert_text "Musical phrasing was successfully destroyed"
  end
end
