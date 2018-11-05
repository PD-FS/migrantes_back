require 'test_helper'

class DonationCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donation_category = donation_categories(:one)
  end

  test "should get index" do
    get donation_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_donation_category_url
    assert_response :success
  end

  test "should create donation_category" do
    assert_difference('DonationCategory.count') do
      post donation_categories_url, params: { donation_category: { donation_kind_id_id: @donation_category.donation_kind_id_id, icon: @donation_category.icon, name: @donation_category.name } }
    end

    assert_redirected_to donation_category_url(DonationCategory.last)
  end

  test "should show donation_category" do
    get donation_category_url(@donation_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_donation_category_url(@donation_category)
    assert_response :success
  end

  test "should update donation_category" do
    patch donation_category_url(@donation_category), params: { donation_category: { donation_kind_id_id: @donation_category.donation_kind_id_id, icon: @donation_category.icon, name: @donation_category.name } }
    assert_redirected_to donation_category_url(@donation_category)
  end

  test "should destroy donation_category" do
    assert_difference('DonationCategory.count', -1) do
      delete donation_category_url(@donation_category)
    end

    assert_redirected_to donation_categories_url
  end
end
