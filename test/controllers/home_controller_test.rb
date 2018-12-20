require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get new_sled" do
    get home_new_sled_url
    assert_response :success
  end

end
