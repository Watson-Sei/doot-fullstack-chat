class TestController < ApplicationController
  before_action :authenticate_user!, :only => [:index]
  def index
    render json: {
      data: {
        message: "Welcome #{current_user.email}",
        user: current_user
      }
    }, status: 200
  end
end
