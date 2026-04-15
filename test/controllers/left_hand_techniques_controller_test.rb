require "test_helper"

class LeftHandTechniquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @left_hand_technique = left_hand_techniques(:one)
  end

  test "should get index" do
    get left_hand_techniques_url
    assert_response :success
  end

  test "should get new" do
    get new_left_hand_technique_url
    assert_response :success
  end

  test "should create left_hand_technique" do
    assert_difference("LeftHandTechnique.count") do
      post left_hand_techniques_url, params: { left_hand_technique: { name: @left_hand_technique.name } }
    end

    assert_redirected_to left_hand_technique_url(LeftHandTechnique.last)
  end

  test "should show left_hand_technique" do
    get left_hand_technique_url(@left_hand_technique)
    assert_response :success
  end

  test "should get edit" do
    get edit_left_hand_technique_url(@left_hand_technique)
    assert_response :success
  end

  test "should update left_hand_technique" do
    patch left_hand_technique_url(@left_hand_technique), params: { left_hand_technique: { name: @left_hand_technique.name } }
    assert_redirected_to left_hand_technique_url(@left_hand_technique)
  end

  test "should destroy left_hand_technique" do
    assert_difference("LeftHandTechnique.count", -1) do
      delete left_hand_technique_url(@left_hand_technique)
    end

    assert_redirected_to left_hand_techniques_url
  end
end
