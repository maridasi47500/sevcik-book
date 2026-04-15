require "application_system_test_case"

class IntervallesTest < ApplicationSystemTestCase
  setup do
    @intervalle = intervalles(:one)
  end

  test "visiting the index" do
    visit intervalles_url
    assert_selector "h1", text: "Intervalles"
  end

  test "should create intervalle" do
    visit intervalles_url
    click_on "New intervalle"

    fill_in "Name", with: @intervalle.name
    click_on "Create Intervalle"

    assert_text "Intervalle was successfully created"
    click_on "Back"
  end

  test "should update Intervalle" do
    visit intervalle_url(@intervalle)
    click_on "Edit this intervalle", match: :first

    fill_in "Name", with: @intervalle.name
    click_on "Update Intervalle"

    assert_text "Intervalle was successfully updated"
    click_on "Back"
  end

  test "should destroy Intervalle" do
    visit intervalle_url(@intervalle)
    click_on "Destroy this intervalle", match: :first

    assert_text "Intervalle was successfully destroyed"
  end
end
