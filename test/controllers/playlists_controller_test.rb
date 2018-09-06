require 'test_helper'

class PlaylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playlist1 = playlists(:one)
    @playlist2 = playlists(:two)
  end

  test 'shows playlist if owner' do
    get playlist_url(@playlist1, user_id: 1), as: :json
    assert_response :success
  end

  test 'shows playlist if shared' do
    get playlist_url(@playlist1, user_id: 2), as: :json
    assert_response :success
  end

  test 'does not show playlist if not owner and not shared' do
    get playlist_url(@playlist2, user_id: 1), as: :json
    assert_response :unauthorized
  end

  test 'shares playlist if owner' do

  end

  test 'does not share playlist if not owner' do

  end

  test 'unshares playlist if owner' do

  end

  test 'does not share playlist if not owner' do

  end
end
