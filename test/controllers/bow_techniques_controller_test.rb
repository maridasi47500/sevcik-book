require "test_helper"

class BowTechniquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bow_technique = bow_techniques(:one)
  end

  test "should get index" do
    get bow_techniques_url
    assert_response :success
  end

  test "should get new" do
    get new_bow_technique_url
    assert_response :success
  end

  test "should create bow_technique" do
    assert_difference("BowTechnique.count") do
      post bow_techniques_url, params: { bow_technique: { name: @bow_technique.name } }
    end

    assert_redirected_to bow_technique_url(BowTechnique.last)
  end

  test "should show bow_technique" do
    get bow_technique_url(@bow_technique)
    assert_response :success
  end

  test "should get edit" do
    get edit_bow_technique_url(@bow_technique)
    assert_response :success
  end

  test "should update bow_technique" do
    patch bow_technique_url(@bow_technique), params: { bow_technique: { name: @bow_technique.name } }
    assert_redirected_to bow_technique_url(@bow_technique)
  end

  test "should destroy bow_technique" do
    assert_difference("BowTechnique.count", -1) do
      delete bow_technique_url(@bow_technique)
    end

    assert_redirected_to bow_techniques_url
  end
end
