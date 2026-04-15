require "test_helper"

class RhythmicTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rhythmic_type = rhythmic_types(:one)
  end

  test "should get index" do
    get rhythmic_types_url
    assert_response :success
  end

  test "should get new" do
    get new_rhythmic_type_url
    assert_response :success
  end

  test "should create rhythmic_type" do
    assert_difference("RhythmicType.count") do
      post rhythmic_types_url, params: { rhythmic_type: { name: @rhythmic_type.name } }
    end

    assert_redirected_to rhythmic_type_url(RhythmicType.last)
  end

  test "should show rhythmic_type" do
    get rhythmic_type_url(@rhythmic_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_rhythmic_type_url(@rhythmic_type)
    assert_response :success
  end

  test "should update rhythmic_type" do
    patch rhythmic_type_url(@rhythmic_type), params: { rhythmic_type: { name: @rhythmic_type.name } }
    assert_redirected_to rhythmic_type_url(@rhythmic_type)
  end

  test "should destroy rhythmic_type" do
    assert_difference("RhythmicType.count", -1) do
      delete rhythmic_type_url(@rhythmic_type)
    end

    assert_redirected_to rhythmic_types_url
  end
end
