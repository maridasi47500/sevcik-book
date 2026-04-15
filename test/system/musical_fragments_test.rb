require "application_system_test_case"

class MusicalFragmentsTest < ApplicationSystemTestCase
  setup do
    @musical_fragment = musical_fragments(:one)
  end

  test "visiting the index" do
    visit musical_fragments_url
    assert_selector "h1", text: "Musical fragments"
  end

  test "should create musical fragment" do
    visit musical_fragments_url
    click_on "New musical fragment"

    fill_in "Bow location", with: @musical_fragment.bow_location_id
    fill_in "Bow portion", with: @musical_fragment.bow_portion_id
    fill_in "Caractere", with: @musical_fragment.caractere_id
    fill_in "End measure", with: @musical_fragment.end_measure
    fill_in "Focus", with: @musical_fragment.focus_id
    fill_in "Lilypond", with: @musical_fragment.lilypond_id
    fill_in "Nuance", with: @musical_fragment.nuance_id
    fill_in "Position", with: @musical_fragment.position_id
    fill_in "Source title", with: @musical_fragment.source_title_id
    fill_in "Start measure", with: @musical_fragment.start_measure
    fill_in "Title", with: @musical_fragment.title
    click_on "Create Musical fragment"

    assert_text "Musical fragment was successfully created"
    click_on "Back"
  end

  test "should update Musical fragment" do
    visit musical_fragment_url(@musical_fragment)
    click_on "Edit this musical fragment", match: :first

    fill_in "Bow location", with: @musical_fragment.bow_location_id
    fill_in "Bow portion", with: @musical_fragment.bow_portion_id
    fill_in "Caractere", with: @musical_fragment.caractere_id
    fill_in "End measure", with: @musical_fragment.end_measure
    fill_in "Focus", with: @musical_fragment.focus_id
    fill_in "Lilypond", with: @musical_fragment.lilypond_id
    fill_in "Nuance", with: @musical_fragment.nuance_id
    fill_in "Position", with: @musical_fragment.position_id
    fill_in "Source title", with: @musical_fragment.source_title_id
    fill_in "Start measure", with: @musical_fragment.start_measure
    fill_in "Title", with: @musical_fragment.title
    click_on "Update Musical fragment"

    assert_text "Musical fragment was successfully updated"
    click_on "Back"
  end

  test "should destroy Musical fragment" do
    visit musical_fragment_url(@musical_fragment)
    click_on "Destroy this musical fragment", match: :first

    assert_text "Musical fragment was successfully destroyed"
  end
end
