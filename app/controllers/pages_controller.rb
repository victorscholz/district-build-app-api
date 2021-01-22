class PagesController < ApplicationController
  def show
    render json: {message: "welcome"}
  end
end
