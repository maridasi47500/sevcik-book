require "test_helper"

class FingerRestraintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finger_restraint = finger_restraints(:one)
  end

  test "should get index" do
    get finger_restraints_url
    assert_response :success
  end

  test "should get new" do
    get new_finger_restraint_url
    assert_response :success
  end

  test "should create finger_restraint" do
    assert_difference("FingerRestraint.count") do
      post finger_restraints_url, params: { finger_restraint: { name: @finger_restraint.name } }
    end

    assert_redirected_to finger_restraint_url(FingerRestraint.last)
  end

  test "should show finger_restraint" do
    get finger_restraint_url(@finger_restraint)
    assert_response :success
  end

  test "should get edit" do
    get edit_finger_restraint_url(@finger_restraint)
    assert_response :success
  end

  test "should update finger_restraint" do
    patch finger_restraint_url(@finger_restraint), params: { finger_restraint: { name: @finger_restraint.name } }
    assert_redirected_to finger_restraint_url(@finger_restraint)
  end

  test "should destroy finger_restraint" do
    assert_difference("FingerRestraint.count", -1) do
      delete finger_restraint_url(@finger_restraint)
    end

    assert_redirected_to finger_restraints_url
  end
end
