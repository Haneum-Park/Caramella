require 'test_helper'

class PortfolioControllerTest < ActionDispatch::IntegrationTest
  test "should get portfolio" do
    get portfolio_portfolio_url
    assert_response :success
  end

end
