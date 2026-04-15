require "application_system_test_case"

class PieceTypesTest < ApplicationSystemTestCase
  setup do
    @piece_type = piece_types(:one)
  end

  test "visiting the index" do
    visit piece_types_url
    assert_selector "h1", text: "Piece types"
  end

  test "should create piece type" do
    visit piece_types_url
    click_on "New piece type"

    fill_in "Name", with: @piece_type.name
    click_on "Create Piece type"

    assert_text "Piece type was successfully created"
    click_on "Back"
  end

  test "should update Piece type" do
    visit piece_type_url(@piece_type)
    click_on "Edit this piece type", match: :first

    fill_in "Name", with: @piece_type.name
    click_on "Update Piece type"

    assert_text "Piece type was successfully updated"
    click_on "Back"
  end

  test "should destroy Piece type" do
    visit piece_type_url(@piece_type)
    click_on "Destroy this piece type", match: :first

    assert_text "Piece type was successfully destroyed"
  end
end
