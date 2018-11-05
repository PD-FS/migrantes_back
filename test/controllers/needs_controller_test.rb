require 'test_helper'

class NeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @need = needs(:one)
  end

  test "should get index" do
    get needs_url
    assert_response :success
  end

  test "should get new" do
    get new_need_url
    assert_response :success
  end

  test "should create need" do
    assert_difference('Need.count') do
      post needs_url, params: { need: { Description: @need.Description, donation_category_id_id: @need.donation_category_id_id, enterprise_id_id: @need.enterprise_id_id, given_element: @need.given_element, is_complete: @need.is_complete, request_element: @need.request_element } }
    end

    assert_redirected_to need_url(Need.last)
  end

  test "should show need" do
    get need_url(@need)
    assert_response :success
  end

  test "should get edit" do
    get edit_need_url(@need)
    assert_response :success
  end

  test "should update need" do
    patch need_url(@need), params: { need: { Description: @need.Description, donation_category_id_id: @need.donation_category_id_id, enterprise_id_id: @need.enterprise_id_id, given_element: @need.given_element, is_complete: @need.is_complete, request_element: @need.request_element } }
    assert_redirected_to need_url(@need)
  end

  test "should destroy need" do
    assert_difference('Need.count', -1) do
      delete need_url(@need)
    end

    assert_redirected_to needs_url
  end
end
