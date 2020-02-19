require 'test_helper'

class ApplyControllerTest < ActionDispatch::IntegrationTest
  test "should get apply" do
    get apply_apply_url
    assert_response :success
  end

end
