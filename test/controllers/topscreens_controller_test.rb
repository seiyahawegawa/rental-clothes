require 'test_helper'

class TopscreensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get topscreens_index_url
    assert_response :success
  end

end
