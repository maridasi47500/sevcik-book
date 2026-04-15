require "test_helper"

class CaracteresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caractere = caracteres(:one)
  end

  test "should get index" do
    get caracteres_url
    assert_response :success
  end

  test "should get new" do
    get new_caractere_url
    assert_response :success
  end

  test "should create caractere" do
    assert_difference("Caractere.count") do
      post caracteres_url, params: { caractere: { name: @caractere.name } }
    end

    assert_redirected_to caractere_url(Caractere.last)
  end

  test "should show caractere" do
    get caractere_url(@caractere)
    assert_response :success
  end

  test "should get edit" do
    get edit_caractere_url(@caractere)
    assert_response :success
  end

  test "should update caractere" do
    patch caractere_url(@caractere), params: { caractere: { name: @caractere.name } }
    assert_redirected_to caractere_url(@caractere)
  end

  test "should destroy caractere" do
    assert_difference("Caractere.count", -1) do
      delete caractere_url(@caractere)
    end

    assert_redirected_to caracteres_url
  end
end
