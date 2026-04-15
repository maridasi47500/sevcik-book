require "test_helper"

class SilencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @silence = silences(:one)
  end

  test "should get index" do
    get silences_url
    assert_response :success
  end

  test "should get new" do
    get new_silence_url
    assert_response :success
  end

  test "should create silence" do
    assert_difference("Silence.count") do
      post silences_url, params: { silence: { name: @silence.name } }
    end

    assert_redirected_to silence_url(Silence.last)
  end

  test "should show silence" do
    get silence_url(@silence)
    assert_response :success
  end

  test "should get edit" do
    get edit_silence_url(@silence)
    assert_response :success
  end

  test "should update silence" do
    patch silence_url(@silence), params: { silence: { name: @silence.name } }
    assert_redirected_to silence_url(@silence)
  end

  test "should destroy silence" do
    assert_difference("Silence.count", -1) do
      delete silence_url(@silence)
    end

    assert_redirected_to silences_url
  end
end
