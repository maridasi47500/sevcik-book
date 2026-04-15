require "test_helper"

class FingeringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fingering = fingerings(:one)
  end

  test "should get index" do
    get fingerings_url
    assert_response :success
  end

  test "should get new" do
    get new_fingering_url
    assert_response :success
  end

  test "should create fingering" do
    assert_difference("Fingering.count") do
      post fingerings_url, params: { fingering: { name: @fingering.name } }
    end

    assert_redirected_to fingering_url(Fingering.last)
  end

  test "should show fingering" do
    get fingering_url(@fingering)
    assert_response :success
  end

  test "should get edit" do
    get edit_fingering_url(@fingering)
    assert_response :success
  end

  test "should update fingering" do
    patch fingering_url(@fingering), params: { fingering: { name: @fingering.name } }
    assert_redirected_to fingering_url(@fingering)
  end

  test "should destroy fingering" do
    assert_difference("Fingering.count", -1) do
      delete fingering_url(@fingering)
    end

    assert_redirected_to fingerings_url
  end
end
