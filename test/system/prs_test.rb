require "application_system_test_case"

class PrsTest < ApplicationSystemTestCase
  setup do
    @pr = prs(:one)
  end

  test "visiting the index" do
    visit prs_url
    assert_selector "h1", text: "Prs"
  end

  test "creating a Pr" do
    visit prs_url
    click_on "New Pr"

    fill_in "Content", with: @pr.content
    fill_in "Date", with: @pr.date
    fill_in "Title", with: @pr.title
    click_on "Create Pr"

    assert_text "Pr was successfully created"
    click_on "Back"
  end

  test "updating a Pr" do
    visit prs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @pr.content
    fill_in "Date", with: @pr.date
    fill_in "Title", with: @pr.title
    click_on "Update Pr"

    assert_text "Pr was successfully updated"
    click_on "Back"
  end

  test "destroying a Pr" do
    visit prs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pr was successfully destroyed"
  end
end
