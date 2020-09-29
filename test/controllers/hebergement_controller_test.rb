require 'test_helper'

class HebergementControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hebergement_index_url
    assert_response :success
  end

  test "should get show" do
    get hebergement_show_url
    assert_response :success
  end

  test "should get create" do
    get hebergement_create_url
    assert_response :success
  end

  test "should get update" do
    get hebergement_update_url
    assert_response :success
  end

  test "should get edit" do
    get hebergement_edit_url
    assert_response :success
  end

  test "should get delete" do
    get hebergement_delete_url
    assert_response :success
  end

end
