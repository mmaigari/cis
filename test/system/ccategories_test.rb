require "application_system_test_case"

class CcategoriesTest < ApplicationSystemTestCase
  setup do
    @ccategory = ccategories(:one)
  end

  test "visiting the index" do
    visit ccategories_url
    assert_selector "h1", text: "Ccategories"
  end

  test "should create ccategory" do
    visit ccategories_url
    click_on "New ccategory"

    fill_in "Code", with: @ccategory.code
    fill_in "Title", with: @ccategory.title
    click_on "Create Ccategory"

    assert_text "Ccategory was successfully created"
    click_on "Back"
  end

  test "should update Ccategory" do
    visit ccategory_url(@ccategory)
    click_on "Edit this ccategory", match: :first

    fill_in "Code", with: @ccategory.code
    fill_in "Title", with: @ccategory.title
    click_on "Update Ccategory"

    assert_text "Ccategory was successfully updated"
    click_on "Back"
  end

  test "should destroy Ccategory" do
    visit ccategory_url(@ccategory)
    click_on "Destroy this ccategory", match: :first

    assert_text "Ccategory was successfully destroyed"
  end
end
