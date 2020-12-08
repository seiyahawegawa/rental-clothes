require 'test_helper'

class MensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mens_index_url
    assert_response :success
  end

end
