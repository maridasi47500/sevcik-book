require "application_system_test_case"

class FingerRestraintsTest < ApplicationSystemTestCase
  setup do
    @finger_restraint = finger_restraints(:one)
  end

  test "visiting the index" do
    visit finger_restraints_url
    assert_selector "h1", text: "Finger restraints"
  end

  test "should create finger restraint" do
    visit finger_restraints_url
    click_on "New finger restraint"

    fill_in "Name", with: @finger_restraint.name
    click_on "Create Finger restraint"

    assert_text "Finger restraint was successfully created"
    click_on "Back"
  end

  test "should update Finger restraint" do
    visit finger_restraint_url(@finger_restraint)
    click_on "Edit this finger restraint", match: :first

    fill_in "Name", with: @finger_restraint.name
    click_on "Update Finger restraint"

    assert_text "Finger restraint was successfully updated"
    click_on "Back"
  end

  test "should destroy Finger restraint" do
    visit finger_restraint_url(@finger_restraint)
    click_on "Destroy this finger restraint", match: :first

    assert_text "Finger restraint was successfully destroyed"
  end
end
