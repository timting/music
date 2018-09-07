require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  setup do
    @playlist = playlists(:one)
  end

  test 'songs method works when some songs do not exist' do
    assert(@playlist.songs.count == 1)
  end
end
