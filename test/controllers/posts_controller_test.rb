require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get posts_new_url
    assert_response :success
  end

  test "should get createindex" do
    get posts_createindex_url
    assert_response :success
  end

end
