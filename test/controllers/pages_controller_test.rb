require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get pages_home_url
    assert_redirected_to new_session_path
  end
  test "should get home" do
    sign_in_as(users(:one))
    get pages_home_url
    assert_response :success
  end
end
