require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song = songs(:one)
  end

  test 'should get index' do
    get songs_url, as: :json
    assert_response :success
  end
end
