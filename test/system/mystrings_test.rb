require "application_system_test_case"

class MystringsTest < ApplicationSystemTestCase
  setup do
    @mystring = mystrings(:one)
  end

  test "visiting the index" do
    visit mystrings_url
    assert_selector "h1", text: "Mystrings"
  end

  test "should create mystring" do
    visit mystrings_url
    click_on "New mystring"

    fill_in "Name", with: @mystring.name
    click_on "Create Mystring"

    assert_text "Mystring was successfully created"
    click_on "Back"
  end

  test "should update Mystring" do
    visit mystring_url(@mystring)
    click_on "Edit this mystring", match: :first

    fill_in "Name", with: @mystring.name
    click_on "Update Mystring"

    assert_text "Mystring was successfully updated"
    click_on "Back"
  end

  test "should destroy Mystring" do
    visit mystring_url(@mystring)
    click_on "Destroy this mystring", match: :first

    assert_text "Mystring was successfully destroyed"
  end
end
