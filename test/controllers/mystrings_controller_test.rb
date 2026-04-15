require "test_helper"

class MystringsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mystring = mystrings(:one)
  end

  test "should get index" do
    get mystrings_url
    assert_response :success
  end

  test "should get new" do
    get new_mystring_url
    assert_response :success
  end

  test "should create mystring" do
    assert_difference("Mystring.count") do
      post mystrings_url, params: { mystring: { name: @mystring.name } }
    end

    assert_redirected_to mystring_url(Mystring.last)
  end

  test "should show mystring" do
    get mystring_url(@mystring)
    assert_response :success
  end

  test "should get edit" do
    get edit_mystring_url(@mystring)
    assert_response :success
  end

  test "should update mystring" do
    patch mystring_url(@mystring), params: { mystring: { name: @mystring.name } }
    assert_redirected_to mystring_url(@mystring)
  end

  test "should destroy mystring" do
    assert_difference("Mystring.count", -1) do
      delete mystring_url(@mystring)
    end

    assert_redirected_to mystrings_url
  end
end
