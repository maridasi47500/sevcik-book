require "application_system_test_case"

class HarmoniqueNaturesTest < ApplicationSystemTestCase
  setup do
    @harmonique_nature = harmonique_natures(:one)
  end

  test "visiting the index" do
    visit harmonique_natures_url
    assert_selector "h1", text: "Harmonique natures"
  end

  test "should create harmonique nature" do
    visit harmonique_natures_url
    click_on "New harmonique nature"

    fill_in "Name", with: @harmonique_nature.name
    click_on "Create Harmonique nature"

    assert_text "Harmonique nature was successfully created"
    click_on "Back"
  end

  test "should update Harmonique nature" do
    visit harmonique_nature_url(@harmonique_nature)
    click_on "Edit this harmonique nature", match: :first

    fill_in "Name", with: @harmonique_nature.name
    click_on "Update Harmonique nature"

    assert_text "Harmonique nature was successfully updated"
    click_on "Back"
  end

  test "should destroy Harmonique nature" do
    visit harmonique_nature_url(@harmonique_nature)
    click_on "Destroy this harmonique nature", match: :first

    assert_text "Harmonique nature was successfully destroyed"
  end
end
