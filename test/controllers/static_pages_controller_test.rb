require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get services" do
    get static_pages_services_url
    assert_response :success
  end

  test "should get price" do
    get static_pages_price_url
    assert_response :success
  end

  test "should get payment" do
    get static_pages_payment_url
    assert_response :success
  end

  test "should get delivery" do
    get static_pages_delivery_url
    assert_response :success
  end

  test "should get conditions" do
    get static_pages_conditions_url
    assert_response :success
  end

  test "should get faq" do
    get static_pages_faq_url
    assert_response :success
  end

  test "should get contacts" do
    get static_pages_contacts_url
    assert_response :success
  end

end
