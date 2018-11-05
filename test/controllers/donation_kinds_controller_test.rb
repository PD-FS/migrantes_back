require 'test_helper'

class DonationKindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donation_kind = donation_kinds(:one)
  end

  test "should get index" do
    get donation_kinds_url
    assert_response :success
  end

  test "should get new" do
    get new_donation_kind_url
    assert_response :success
  end

  test "should create donation_kind" do
    assert_difference('DonationKind.count') do
      post donation_kinds_url, params: { donation_kind: { name: @donation_kind.name } }
    end

    assert_redirected_to donation_kind_url(DonationKind.last)
  end

  test "should show donation_kind" do
    get donation_kind_url(@donation_kind)
    assert_response :success
  end

  test "should get edit" do
    get edit_donation_kind_url(@donation_kind)
    assert_response :success
  end

  test "should update donation_kind" do
    patch donation_kind_url(@donation_kind), params: { donation_kind: { name: @donation_kind.name } }
    assert_redirected_to donation_kind_url(@donation_kind)
  end

  test "should destroy donation_kind" do
    assert_difference('DonationKind.count', -1) do
      delete donation_kind_url(@donation_kind)
    end

    assert_redirected_to donation_kinds_url
  end
end
