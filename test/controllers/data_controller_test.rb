require 'test_helper'

class DataControllerTest < ActionController::TestCase
  test "should get insert" do
    get :insert
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get add_form" do
    get :add_form
    assert_response :success
  end

  test "should get edit_form" do
    get :edit_form
    assert_response :success
  end

end
