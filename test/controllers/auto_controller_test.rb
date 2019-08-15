require 'test_helper'

class AutoControllerTest < ActionDispatch::IntegrationTest
  test "should get twitter" do
    get auto_twitter_url
    assert_response :success
  end

end
