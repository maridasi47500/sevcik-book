require "test_helper"

class BowLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bow_location = bow_locations(:one)
  end

  test "should get index" do
    get bow_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_bow_location_url
    assert_response :success
  end

  test "should create bow_location" do
    assert_difference("BowLocation.count") do
      post bow_locations_url, params: { bow_location: { name: @bow_location.name } }
    end

    assert_redirected_to bow_location_url(BowLocation.last)
  end

  test "should show bow_location" do
    get bow_location_url(@bow_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_bow_location_url(@bow_location)
    assert_response :success
  end

  test "should update bow_location" do
    patch bow_location_url(@bow_location), params: { bow_location: { name: @bow_location.name } }
    assert_redirected_to bow_location_url(@bow_location)
  end

  test "should destroy bow_location" do
    assert_difference("BowLocation.count", -1) do
      delete bow_location_url(@bow_location)
    end

    assert_redirected_to bow_locations_url
  end
end
