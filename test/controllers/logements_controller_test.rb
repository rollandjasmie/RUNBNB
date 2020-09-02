require 'test_helper'

class LogementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logements_index_url
    assert_response :success
  end

  test "should get show" do
    get logements_show_url
    assert_response :success
  end

end
