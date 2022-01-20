require "application_system_test_case"

class WikipostsTest < ApplicationSystemTestCase
  setup do
    @wikipost = wikiposts(:one)
  end

  test "visiting the index" do
    visit wikiposts_url
    assert_selector "h1", text: "Wikiposts"
  end

  test "creating a Wikipost" do
    visit wikiposts_url
    click_on "New Wikipost"

    click_on "Create Wikipost"

    assert_text "Wikipost was successfully created"
    click_on "Back"
  end

  test "updating a Wikipost" do
    visit wikiposts_url
    click_on "Edit", match: :first

    click_on "Update Wikipost"

    assert_text "Wikipost was successfully updated"
    click_on "Back"
  end

  test "destroying a Wikipost" do
    visit wikiposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wikipost was successfully destroyed"
  end
end
