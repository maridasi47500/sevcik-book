require "application_system_test_case"

class BowSignsTest < ApplicationSystemTestCase
  setup do
    @bow_sign = bow_signs(:one)
  end

  test "visiting the index" do
    visit bow_signs_url
    assert_selector "h1", text: "Bow signs"
  end

  test "should create bow sign" do
    visit bow_signs_url
    click_on "New bow sign"

    fill_in "Name", with: @bow_sign.name
    click_on "Create Bow sign"

    assert_text "Bow sign was successfully created"
    click_on "Back"
  end

  test "should update Bow sign" do
    visit bow_sign_url(@bow_sign)
    click_on "Edit this bow sign", match: :first

    fill_in "Name", with: @bow_sign.name
    click_on "Update Bow sign"

    assert_text "Bow sign was successfully updated"
    click_on "Back"
  end

  test "should destroy Bow sign" do
    visit bow_sign_url(@bow_sign)
    click_on "Destroy this bow sign", match: :first

    assert_text "Bow sign was successfully destroyed"
  end
end
