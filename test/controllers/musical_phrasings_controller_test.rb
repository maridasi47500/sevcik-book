require "test_helper"

class MusicalPhrasingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musical_phrasing = musical_phrasings(:one)
  end

  test "should get index" do
    get musical_phrasings_url
    assert_response :success
  end

  test "should get new" do
    get new_musical_phrasing_url
    assert_response :success
  end

  test "should create musical_phrasing" do
    assert_difference("MusicalPhrasing.count") do
      post musical_phrasings_url, params: { musical_phrasing: { name: @musical_phrasing.name } }
    end

    assert_redirected_to musical_phrasing_url(MusicalPhrasing.last)
  end

  test "should show musical_phrasing" do
    get musical_phrasing_url(@musical_phrasing)
    assert_response :success
  end

  test "should get edit" do
    get edit_musical_phrasing_url(@musical_phrasing)
    assert_response :success
  end

  test "should update musical_phrasing" do
    patch musical_phrasing_url(@musical_phrasing), params: { musical_phrasing: { name: @musical_phrasing.name } }
    assert_redirected_to musical_phrasing_url(@musical_phrasing)
  end

  test "should destroy musical_phrasing" do
    assert_difference("MusicalPhrasing.count", -1) do
      delete musical_phrasing_url(@musical_phrasing)
    end

    assert_redirected_to musical_phrasings_url
  end
end
