require "test_helper"

class IntervallesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervalle = intervalles(:one)
  end

  test "should get index" do
    get intervalles_url
    assert_response :success
  end

  test "should get new" do
    get new_intervalle_url
    assert_response :success
  end

  test "should create intervalle" do
    assert_difference("Intervalle.count") do
      post intervalles_url, params: { intervalle: { name: @intervalle.name } }
    end

    assert_redirected_to intervalle_url(Intervalle.last)
  end

  test "should show intervalle" do
    get intervalle_url(@intervalle)
    assert_response :success
  end

  test "should get edit" do
    get edit_intervalle_url(@intervalle)
    assert_response :success
  end

  test "should update intervalle" do
    patch intervalle_url(@intervalle), params: { intervalle: { name: @intervalle.name } }
    assert_redirected_to intervalle_url(@intervalle)
  end

  test "should destroy intervalle" do
    assert_difference("Intervalle.count", -1) do
      delete intervalle_url(@intervalle)
    end

    assert_redirected_to intervalles_url
  end
end
