require "test_helper"

class HarmoniqueNaturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harmonique_nature = harmonique_natures(:one)
  end

  test "should get index" do
    get harmonique_natures_url
    assert_response :success
  end

  test "should get new" do
    get new_harmonique_nature_url
    assert_response :success
  end

  test "should create harmonique_nature" do
    assert_difference("HarmoniqueNature.count") do
      post harmonique_natures_url, params: { harmonique_nature: { name: @harmonique_nature.name } }
    end

    assert_redirected_to harmonique_nature_url(HarmoniqueNature.last)
  end

  test "should show harmonique_nature" do
    get harmonique_nature_url(@harmonique_nature)
    assert_response :success
  end

  test "should get edit" do
    get edit_harmonique_nature_url(@harmonique_nature)
    assert_response :success
  end

  test "should update harmonique_nature" do
    patch harmonique_nature_url(@harmonique_nature), params: { harmonique_nature: { name: @harmonique_nature.name } }
    assert_redirected_to harmonique_nature_url(@harmonique_nature)
  end

  test "should destroy harmonique_nature" do
    assert_difference("HarmoniqueNature.count", -1) do
      delete harmonique_nature_url(@harmonique_nature)
    end

    assert_redirected_to harmonique_natures_url
  end
end
