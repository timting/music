require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user1 = users(:one)
    @user2 = users(:two)
  end

  test 'playlists show if authorized' do
    get playlists_user_url(@user1, user_id: 1)
    assert_response :success
  end

  test 'playlists do not show if unauthorized' do
    get playlists_user_url(@user1)
    assert_response :unauthorized
  end

  test 'playlists show both shared and own playlists' do
    get playlists_user_url(@user2, user_id: 2)
    assert_response :success
    playlists = JSON.parse(@response.body)
    # Returns two playlists - one shared and one owned
    assert(playlists.count == 2)
  end

end
