require "test_helper"

class TypeAccordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_accord = type_accords(:one)
  end

  test "should get index" do
    get type_accords_url
    assert_response :success
  end

  test "should get new" do
    get new_type_accord_url
    assert_response :success
  end

  test "should create type_accord" do
    assert_difference("TypeAccord.count") do
      post type_accords_url, params: { type_accord: { name: @type_accord.name } }
    end

    assert_redirected_to type_accord_url(TypeAccord.last)
  end

  test "should show type_accord" do
    get type_accord_url(@type_accord)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_accord_url(@type_accord)
    assert_response :success
  end

  test "should update type_accord" do
    patch type_accord_url(@type_accord), params: { type_accord: { name: @type_accord.name } }
    assert_redirected_to type_accord_url(@type_accord)
  end

  test "should destroy type_accord" do
    assert_difference("TypeAccord.count", -1) do
      delete type_accord_url(@type_accord)
    end

    assert_redirected_to type_accords_url
  end
end
