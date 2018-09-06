class HomeController < ApplicationController
  # Healthcheck
  def health
    render json: {"status": "OK"}
  end
end