require "application_system_test_case"

class SourceTitlesTest < ApplicationSystemTestCase
  setup do
    @source_title = source_titles(:one)
  end

  test "visiting the index" do
    visit source_titles_url
    assert_selector "h1", text: "Source titles"
  end

  test "should create source title" do
    visit source_titles_url
    click_on "New source title"

    fill_in "Composer", with: @source_title.composer
    fill_in "Id opus", with: @source_title.id_opus
    fill_in "Musical instrument", with: @source_title.musical_instrument_id
    fill_in "Number", with: @source_title.number
    click_on "Create Source title"

    assert_text "Source title was successfully created"
    click_on "Back"
  end

  test "should update Source title" do
    visit source_title_url(@source_title)
    click_on "Edit this source title", match: :first

    fill_in "Composer", with: @source_title.composer
    fill_in "Id opus", with: @source_title.id_opus
    fill_in "Musical instrument", with: @source_title.musical_instrument_id
    fill_in "Number", with: @source_title.number
    click_on "Update Source title"

    assert_text "Source title was successfully updated"
    click_on "Back"
  end

  test "should destroy Source title" do
    visit source_title_url(@source_title)
    click_on "Destroy this source title", match: :first

    assert_text "Source title was successfully destroyed"
  end
end
