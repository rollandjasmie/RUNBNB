require 'test_helper'

class InformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get informations_new_url
    assert_response :success
  end

  test "should get create" do
    get informations_create_url
    assert_response :success
  end

  test "should get edit" do
    get informations_edit_url
    assert_response :success
  end

  test "should get update" do
    get informations_update_url
    assert_response :success
  end

end
