require 'test_helper'

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get mainPage" do
    get game_mainPage_url
    assert_response :success
  end

end
