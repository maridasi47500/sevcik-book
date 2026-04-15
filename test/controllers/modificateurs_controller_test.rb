require "test_helper"

class ModificateursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @modificateur = modificateurs(:one)
  end

  test "should get index" do
    get modificateurs_url
    assert_response :success
  end

  test "should get new" do
    get new_modificateur_url
    assert_response :success
  end

  test "should create modificateur" do
    assert_difference("Modificateur.count") do
      post modificateurs_url, params: { modificateur: { name: @modificateur.name } }
    end

    assert_redirected_to modificateur_url(Modificateur.last)
  end

  test "should show modificateur" do
    get modificateur_url(@modificateur)
    assert_response :success
  end

  test "should get edit" do
    get edit_modificateur_url(@modificateur)
    assert_response :success
  end

  test "should update modificateur" do
    patch modificateur_url(@modificateur), params: { modificateur: { name: @modificateur.name } }
    assert_redirected_to modificateur_url(@modificateur)
  end

  test "should destroy modificateur" do
    assert_difference("Modificateur.count", -1) do
      delete modificateur_url(@modificateur)
    end

    assert_redirected_to modificateurs_url
  end
end
