require 'test_helper'

class PrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pr = prs(:one)
  end

  test "should get index" do
    get prs_url
    assert_response :success
  end

  test "should get new" do
    get new_pr_url
    assert_response :success
  end

  test "should create pr" do
    assert_difference('Pr.count') do
      post prs_url, params: { pr: { content: @pr.content, date: @pr.date, title: @pr.title } }
    end

    assert_redirected_to pr_url(Pr.last)
  end

  test "should show pr" do
    get pr_url(@pr)
    assert_response :success
  end

  test "should get edit" do
    get edit_pr_url(@pr)
    assert_response :success
  end

  test "should update pr" do
    patch pr_url(@pr), params: { pr: { content: @pr.content, date: @pr.date, title: @pr.title } }
    assert_redirected_to pr_url(@pr)
  end

  test "should destroy pr" do
    assert_difference('Pr.count', -1) do
      delete pr_url(@pr)
    end

    assert_redirected_to prs_url
  end
end
