require "application_system_test_case"

class ClonesTest < ApplicationSystemTestCase
  setup do
    @clone = clones(:one)
  end

  test "visiting the index" do
    visit clones_url
    assert_selector "h1", text: "Clones"
  end

  test "should create clone" do
    visit clones_url
    click_on "New clone"

    fill_in "Description", with: @clone.description
    fill_in "Username", with: @clone.username
    click_on "Create Clone"

    assert_text "Clone was successfully created"
    click_on "Back"
  end

  test "should update Clone" do
    visit clone_url(@clone)
    click_on "Edit this clone", match: :first

    fill_in "Description", with: @clone.description
    fill_in "Username", with: @clone.username
    click_on "Update Clone"

    assert_text "Clone was successfully updated"
    click_on "Back"
  end

  test "should destroy Clone" do
    visit clone_url(@clone)
    click_on "Destroy this clone", match: :first

    assert_text "Clone was successfully destroyed"
  end
end
