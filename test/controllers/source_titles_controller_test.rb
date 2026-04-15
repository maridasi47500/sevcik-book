require "test_helper"

class SourceTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @source_title = source_titles(:one)
  end

  test "should get index" do
    get source_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_source_title_url
    assert_response :success
  end

  test "should create source_title" do
    assert_difference("SourceTitle.count") do
      post source_titles_url, params: { source_title: { composer: @source_title.composer, id_opus: @source_title.id_opus, musical_instrument_id: @source_title.musical_instrument_id, number: @source_title.number } }
    end

    assert_redirected_to source_title_url(SourceTitle.last)
  end

  test "should show source_title" do
    get source_title_url(@source_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_source_title_url(@source_title)
    assert_response :success
  end

  test "should update source_title" do
    patch source_title_url(@source_title), params: { source_title: { composer: @source_title.composer, id_opus: @source_title.id_opus, musical_instrument_id: @source_title.musical_instrument_id, number: @source_title.number } }
    assert_redirected_to source_title_url(@source_title)
  end

  test "should destroy source_title" do
    assert_difference("SourceTitle.count", -1) do
      delete source_title_url(@source_title)
    end

    assert_redirected_to source_titles_url
  end
end
