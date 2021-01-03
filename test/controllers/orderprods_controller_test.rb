require "test_helper"

class OrderprodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get orderprods_index_url
    assert_response :success
  end

  test "should get show" do
    get orderprods_show_url
    assert_response :success
  end

  test "should get new" do
    get orderprods_new_url
    assert_response :success
  end

  test "should get edit" do
    get orderprods_edit_url
    assert_response :success
  end
end
