class ApplicationController < ActionController::API
  # The ids come in as integers, for this exercise,
  # just stringify them. Longer term, just use ints
  # as ids.
  def stringify_ids
    params[:id] = params[:id].to_s
    params[:user_id] = params[:user_id].to_s
  end
end
