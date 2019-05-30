require 'test_helper'

class TrucksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trucks_index_url
    assert_response :success
  end

  test "should get new" do
    get trucks_new_url
    assert_response :success
  end

  test "should get edit" do
    get trucks_edit_url
    assert_response :success
  end

end
