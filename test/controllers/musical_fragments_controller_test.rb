require "test_helper"

class MusicalFragmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musical_fragment = musical_fragments(:one)
  end

  test "should get index" do
    get musical_fragments_url
    assert_response :success
  end

  test "should get new" do
    get new_musical_fragment_url
    assert_response :success
  end

  test "should create musical_fragment" do
    assert_difference("MusicalFragment.count") do
      post musical_fragments_url, params: { musical_fragment: { bow_location_id: @musical_fragment.bow_location_id, bow_portion_id: @musical_fragment.bow_portion_id, caractere_id: @musical_fragment.caractere_id, end_measure: @musical_fragment.end_measure, focus_id: @musical_fragment.focus_id, lilypond_id: @musical_fragment.lilypond_id, nuance_id: @musical_fragment.nuance_id, position_id: @musical_fragment.position_id, source_title_id: @musical_fragment.source_title_id, start_measure: @musical_fragment.start_measure, title: @musical_fragment.title } }
    end

    assert_redirected_to musical_fragment_url(MusicalFragment.last)
  end

  test "should show musical_fragment" do
    get musical_fragment_url(@musical_fragment)
    assert_response :success
  end

  test "should get edit" do
    get edit_musical_fragment_url(@musical_fragment)
    assert_response :success
  end

  test "should update musical_fragment" do
    patch musical_fragment_url(@musical_fragment), params: { musical_fragment: { bow_location_id: @musical_fragment.bow_location_id, bow_portion_id: @musical_fragment.bow_portion_id, caractere_id: @musical_fragment.caractere_id, end_measure: @musical_fragment.end_measure, focus_id: @musical_fragment.focus_id, lilypond_id: @musical_fragment.lilypond_id, nuance_id: @musical_fragment.nuance_id, position_id: @musical_fragment.position_id, source_title_id: @musical_fragment.source_title_id, start_measure: @musical_fragment.start_measure, title: @musical_fragment.title } }
    assert_redirected_to musical_fragment_url(@musical_fragment)
  end

  test "should destroy musical_fragment" do
    assert_difference("MusicalFragment.count", -1) do
      delete musical_fragment_url(@musical_fragment)
    end

    assert_redirected_to musical_fragments_url
  end
end
