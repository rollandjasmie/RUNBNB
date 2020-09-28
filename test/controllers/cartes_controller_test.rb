require 'test_helper'

class CartesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cartes_index_url
    assert_response :success
  end

  test "should get show" do
    get cartes_show_url
    assert_response :success
  end

end
