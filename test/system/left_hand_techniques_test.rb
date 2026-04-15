require "application_system_test_case"

class LeftHandTechniquesTest < ApplicationSystemTestCase
  setup do
    @left_hand_technique = left_hand_techniques(:one)
  end

  test "visiting the index" do
    visit left_hand_techniques_url
    assert_selector "h1", text: "Left hand techniques"
  end

  test "should create left hand technique" do
    visit left_hand_techniques_url
    click_on "New left hand technique"

    fill_in "Name", with: @left_hand_technique.name
    click_on "Create Left hand technique"

    assert_text "Left hand technique was successfully created"
    click_on "Back"
  end

  test "should update Left hand technique" do
    visit left_hand_technique_url(@left_hand_technique)
    click_on "Edit this left hand technique", match: :first

    fill_in "Name", with: @left_hand_technique.name
    click_on "Update Left hand technique"

    assert_text "Left hand technique was successfully updated"
    click_on "Back"
  end

  test "should destroy Left hand technique" do
    visit left_hand_technique_url(@left_hand_technique)
    click_on "Destroy this left hand technique", match: :first

    assert_text "Left hand technique was successfully destroyed"
  end
end
