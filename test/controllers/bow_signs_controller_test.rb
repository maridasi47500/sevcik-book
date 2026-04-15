require "test_helper"

class BowSignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bow_sign = bow_signs(:one)
  end

  test "should get index" do
    get bow_signs_url
    assert_response :success
  end

  test "should get new" do
    get new_bow_sign_url
    assert_response :success
  end

  test "should create bow_sign" do
    assert_difference("BowSign.count") do
      post bow_signs_url, params: { bow_sign: { name: @bow_sign.name } }
    end

    assert_redirected_to bow_sign_url(BowSign.last)
  end

  test "should show bow_sign" do
    get bow_sign_url(@bow_sign)
    assert_response :success
  end

  test "should get edit" do
    get edit_bow_sign_url(@bow_sign)
    assert_response :success
  end

  test "should update bow_sign" do
    patch bow_sign_url(@bow_sign), params: { bow_sign: { name: @bow_sign.name } }
    assert_redirected_to bow_sign_url(@bow_sign)
  end

  test "should destroy bow_sign" do
    assert_difference("BowSign.count", -1) do
      delete bow_sign_url(@bow_sign)
    end

    assert_redirected_to bow_signs_url
  end
end
