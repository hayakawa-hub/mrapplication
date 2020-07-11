require 'test_helper'

class PlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get plans_index_url
    assert_response :success
  end

  test "should get show" do
    get plans_show_url
    assert_response :success
  end

  test "should get search" do
    get plans_search_url
    assert_response :success
  end

  test "should get result" do
    get plans_result_url
    assert_response :success
  end

end
