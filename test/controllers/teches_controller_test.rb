require "test_helper"

class TechesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get teches_new_url
    assert_response :success
  end

  test "should get create" do
    get teches_create_url
    assert_response :success
  end

  test "should get show" do
    get teches_show_url
    assert_response :success
  end

  test "should get index" do
    get teches_index_url
    assert_response :success
  end
end
