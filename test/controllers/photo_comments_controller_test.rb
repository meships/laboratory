require "test_helper"

class PhotoCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get photo_comments_create_url
    assert_response :success
  end
end
