require "test_helper"

class BowArticulationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bow_articulation = bow_articulations(:one)
  end

  test "should get index" do
    get bow_articulations_url
    assert_response :success
  end

  test "should get new" do
    get new_bow_articulation_url
    assert_response :success
  end

  test "should create bow_articulation" do
    assert_difference("BowArticulation.count") do
      post bow_articulations_url, params: { bow_articulation: { name: @bow_articulation.name } }
    end

    assert_redirected_to bow_articulation_url(BowArticulation.last)
  end

  test "should show bow_articulation" do
    get bow_articulation_url(@bow_articulation)
    assert_response :success
  end

  test "should get edit" do
    get edit_bow_articulation_url(@bow_articulation)
    assert_response :success
  end

  test "should update bow_articulation" do
    patch bow_articulation_url(@bow_articulation), params: { bow_articulation: { name: @bow_articulation.name } }
    assert_redirected_to bow_articulation_url(@bow_articulation)
  end

  test "should destroy bow_articulation" do
    assert_difference("BowArticulation.count", -1) do
      delete bow_articulation_url(@bow_articulation)
    end

    assert_redirected_to bow_articulations_url
  end
end
