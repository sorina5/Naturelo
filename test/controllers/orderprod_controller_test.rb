require "test_helper"

class OrderprodControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orderprod_index_url
    assert_response :success
  end

  test "should get show" do
    get orderprod_show_url
    assert_response :success
  end

  test "should get new" do
    get orderprod_new_url
    assert_response :success
  end

  test "should get edit" do
    get orderprod_edit_url
    assert_response :success
  end
end
