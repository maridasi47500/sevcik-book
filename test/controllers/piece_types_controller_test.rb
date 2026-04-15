require "test_helper"

class PieceTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piece_type = piece_types(:one)
  end

  test "should get index" do
    get piece_types_url
    assert_response :success
  end

  test "should get new" do
    get new_piece_type_url
    assert_response :success
  end

  test "should create piece_type" do
    assert_difference("PieceType.count") do
      post piece_types_url, params: { piece_type: { name: @piece_type.name } }
    end

    assert_redirected_to piece_type_url(PieceType.last)
  end

  test "should show piece_type" do
    get piece_type_url(@piece_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_piece_type_url(@piece_type)
    assert_response :success
  end

  test "should update piece_type" do
    patch piece_type_url(@piece_type), params: { piece_type: { name: @piece_type.name } }
    assert_redirected_to piece_type_url(@piece_type)
  end

  test "should destroy piece_type" do
    assert_difference("PieceType.count", -1) do
      delete piece_type_url(@piece_type)
    end

    assert_redirected_to piece_types_url
  end
end
