require "test_helper"

class WikipostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wikipost = wikiposts(:one)
  end

  test "should get index" do
    get wikiposts_url
    assert_response :success
  end

  test "should get new" do
    get new_wikipost_url
    assert_response :success
  end

  test "should create wikipost" do
    assert_difference('Wikipost.count') do
      post wikiposts_url, params: { wikipost: {  } }
    end

    assert_redirected_to wikipost_url(Wikipost.last)
  end

  test "should show wikipost" do
    get wikipost_url(@wikipost)
    assert_response :success
  end

  test "should get edit" do
    get edit_wikipost_url(@wikipost)
    assert_response :success
  end

  test "should update wikipost" do
    patch wikipost_url(@wikipost), params: { wikipost: {  } }
    assert_redirected_to wikipost_url(@wikipost)
  end

  test "should destroy wikipost" do
    assert_difference('Wikipost.count', -1) do
      delete wikipost_url(@wikipost)
    end

    assert_redirected_to wikiposts_url
  end
end
