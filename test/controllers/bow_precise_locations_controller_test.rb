require "test_helper"

class BowPreciseLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bow_precise_location = bow_precise_locations(:one)
  end

  test "should get index" do
    get bow_precise_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_bow_precise_location_url
    assert_response :success
  end

  test "should create bow_precise_location" do
    assert_difference("BowPreciseLocation.count") do
      post bow_precise_locations_url, params: { bow_precise_location: { name: @bow_precise_location.name } }
    end

    assert_redirected_to bow_precise_location_url(BowPreciseLocation.last)
  end

  test "should show bow_precise_location" do
    get bow_precise_location_url(@bow_precise_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_bow_precise_location_url(@bow_precise_location)
    assert_response :success
  end

  test "should update bow_precise_location" do
    patch bow_precise_location_url(@bow_precise_location), params: { bow_precise_location: { name: @bow_precise_location.name } }
    assert_redirected_to bow_precise_location_url(@bow_precise_location)
  end

  test "should destroy bow_precise_location" do
    assert_difference("BowPreciseLocation.count", -1) do
      delete bow_precise_location_url(@bow_precise_location)
    end

    assert_redirected_to bow_precise_locations_url
  end
end
