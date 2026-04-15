require "application_system_test_case"

class TypeAccordsTest < ApplicationSystemTestCase
  setup do
    @type_accord = type_accords(:one)
  end

  test "visiting the index" do
    visit type_accords_url
    assert_selector "h1", text: "Type accords"
  end

  test "should create type accord" do
    visit type_accords_url
    click_on "New type accord"

    fill_in "Name", with: @type_accord.name
    click_on "Create Type accord"

    assert_text "Type accord was successfully created"
    click_on "Back"
  end

  test "should update Type accord" do
    visit type_accord_url(@type_accord)
    click_on "Edit this type accord", match: :first

    fill_in "Name", with: @type_accord.name
    click_on "Update Type accord"

    assert_text "Type accord was successfully updated"
    click_on "Back"
  end

  test "should destroy Type accord" do
    visit type_accord_url(@type_accord)
    click_on "Destroy this type accord", match: :first

    assert_text "Type accord was successfully destroyed"
  end
end
