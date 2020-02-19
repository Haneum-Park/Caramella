require 'test_helper'

class PrControllerTest < ActionDispatch::IntegrationTest
  test "should get pr" do
    get pr_pr_url
    assert_response :success
  end

end
