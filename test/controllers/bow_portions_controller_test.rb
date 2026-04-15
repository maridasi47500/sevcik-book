require "test_helper"

class BowPortionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bow_portion = bow_portions(:one)
  end

  test "should get index" do
    get bow_portions_url
    assert_response :success
  end

  test "should get new" do
    get new_bow_portion_url
    assert_response :success
  end

  test "should create bow_portion" do
    assert_difference("BowPortion.count") do
      post bow_portions_url, params: { bow_portion: { name: @bow_portion.name } }
    end

    assert_redirected_to bow_portion_url(BowPortion.last)
  end

  test "should show bow_portion" do
    get bow_portion_url(@bow_portion)
    assert_response :success
  end

  test "should get edit" do
    get edit_bow_portion_url(@bow_portion)
    assert_response :success
  end

  test "should update bow_portion" do
    patch bow_portion_url(@bow_portion), params: { bow_portion: { name: @bow_portion.name } }
    assert_redirected_to bow_portion_url(@bow_portion)
  end

  test "should destroy bow_portion" do
    assert_difference("BowPortion.count", -1) do
      delete bow_portion_url(@bow_portion)
    end

    assert_redirected_to bow_portions_url
  end
end
