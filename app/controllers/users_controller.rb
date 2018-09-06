class UsersController < ApplicationController
  before_action :stringify_ids
  before_action :set_user, only: [:playlists]
  before_action :authorize

  def playlists
    render json: (@user.my_playlists + @user.playlists_shared_with_me).to_json(methods: :songs)
  end

  private
    def authorize
      if params[:user_id] != params[:id]
        render status: :unauthorized, json: {
          message: "You are unauthorized to perform this action"
        }
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:id, :name, :user_id)
    end
end
