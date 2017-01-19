require 'test_helper'

class PlayerControllerTest < ActionDispatch::IntegrationTest
  test "should get playerSettings" do
    get player_playerSettings_url
    assert_response :success
  end

end
