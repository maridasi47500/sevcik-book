require "test_helper"

class FocusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @focu = focus(:one)
  end

  test "should get index" do
    get focus_url
    assert_response :success
  end

  test "should get new" do
    get new_focu_url
    assert_response :success
  end

  test "should create focu" do
    assert_difference("Focu.count") do
      post focus_url, params: { focu: { name: @focu.name } }
    end

    assert_redirected_to focu_url(Focu.last)
  end

  test "should show focu" do
    get focu_url(@focu)
    assert_response :success
  end

  test "should get edit" do
    get edit_focu_url(@focu)
    assert_response :success
  end

  test "should update focu" do
    patch focu_url(@focu), params: { focu: { name: @focu.name } }
    assert_redirected_to focu_url(@focu)
  end

  test "should destroy focu" do
    assert_difference("Focu.count", -1) do
      delete focu_url(@focu)
    end

    assert_redirected_to focus_url
  end
end
