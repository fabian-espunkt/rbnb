require 'test_helper'

class AlpacasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alpacas_index_url
    assert_response :success
  end

  test "should get show" do
    get alpacas_show_url
    assert_response :success
  end

  test "should get new" do
    get alpacas_new_url
    assert_response :success
  end

  test "should get create" do
    get alpacas_create_url
    assert_response :success
  end

  test "should get edit" do
    get alpacas_edit_url
    assert_response :success
  end

  test "should get update" do
    get alpacas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get alpacas_destroy_url
    assert_response :success
  end

end
