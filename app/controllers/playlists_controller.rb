class PlaylistsController < ApplicationController
  before_action :stringify_ids
  before_action :set_playlist, only: [:show, :share, :unshare]

  # GET /playlists/1
  def show
    if @playlist.can_be_viewed_by?(params[:user_id])
      render json: @playlist
    else
      render status: :unauthorized, json: {
        message: "You are not authorized to view this playlist"
      }
    end
  end

  def share
    if @playlist.can_be_shared_by?(params[:user_id])
      @playlist.share(params[:share_to_id])
      render json: {message: "Sharing successful"}
    else
      render status: :unauthorized, json: {
        message: "You are not authorized to share this playlist"
      }
    end
  end

  def unshare
    if @playlist.can_be_shared_by?(params[:user_id])
      @playlist.unshare(params[:unshare_to_id])
      render json: {message: "Unsharing successful"}
    else
      render status: :unauthorized, json: {
        message: "You are not authorized to unshare this playlist"
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playlist_params
      params.require(:playlist).permit(:id,
        :owner_id,
        :song_ids,
        :shared_with,
        :user_id,
        :share_to_id,
        :unshare_to_id
      )
    end
end
