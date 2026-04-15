require "application_system_test_case"

class CaracteresTest < ApplicationSystemTestCase
  setup do
    @caractere = caracteres(:one)
  end

  test "visiting the index" do
    visit caracteres_url
    assert_selector "h1", text: "Caracteres"
  end

  test "should create caractere" do
    visit caracteres_url
    click_on "New caractere"

    fill_in "Name", with: @caractere.name
    click_on "Create Caractere"

    assert_text "Caractere was successfully created"
    click_on "Back"
  end

  test "should update Caractere" do
    visit caractere_url(@caractere)
    click_on "Edit this caractere", match: :first

    fill_in "Name", with: @caractere.name
    click_on "Update Caractere"

    assert_text "Caractere was successfully updated"
    click_on "Back"
  end

  test "should destroy Caractere" do
    visit caractere_url(@caractere)
    click_on "Destroy this caractere", match: :first

    assert_text "Caractere was successfully destroyed"
  end
end
