require 'test_helper'

class TipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tips_index_url
    assert_response :success
  end

  test "should get edit" do
    get tips_edit_url
    assert_response :success
  end

  test "should get newshow" do
    get tips_newshow_url
    assert_response :success
  end

end
