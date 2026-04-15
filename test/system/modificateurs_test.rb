require "application_system_test_case"

class ModificateursTest < ApplicationSystemTestCase
  setup do
    @modificateur = modificateurs(:one)
  end

  test "visiting the index" do
    visit modificateurs_url
    assert_selector "h1", text: "Modificateurs"
  end

  test "should create modificateur" do
    visit modificateurs_url
    click_on "New modificateur"

    fill_in "Name", with: @modificateur.name
    click_on "Create Modificateur"

    assert_text "Modificateur was successfully created"
    click_on "Back"
  end

  test "should update Modificateur" do
    visit modificateur_url(@modificateur)
    click_on "Edit this modificateur", match: :first

    fill_in "Name", with: @modificateur.name
    click_on "Update Modificateur"

    assert_text "Modificateur was successfully updated"
    click_on "Back"
  end

  test "should destroy Modificateur" do
    visit modificateur_url(@modificateur)
    click_on "Destroy this modificateur", match: :first

    assert_text "Modificateur was successfully destroyed"
  end
end
