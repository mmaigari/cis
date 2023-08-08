require "test_helper"

class CcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ccategory = ccategories(:one)
  end

  test "should get index" do
    get ccategories_url
    assert_response :success
  end

  test "should get new" do
    get new_ccategory_url
    assert_response :success
  end

  test "should create ccategory" do
    assert_difference("Ccategory.count") do
      post ccategories_url, params: { ccategory: { code: @ccategory.code, title: @ccategory.title } }
    end

    assert_redirected_to ccategory_url(Ccategory.last)
  end

  test "should show ccategory" do
    get ccategory_url(@ccategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_ccategory_url(@ccategory)
    assert_response :success
  end

  test "should update ccategory" do
    patch ccategory_url(@ccategory), params: { ccategory: { code: @ccategory.code, title: @ccategory.title } }
    assert_redirected_to ccategory_url(@ccategory)
  end

  test "should destroy ccategory" do
    assert_difference("Ccategory.count", -1) do
      delete ccategory_url(@ccategory)
    end

    assert_redirected_to ccategories_url
  end
end
