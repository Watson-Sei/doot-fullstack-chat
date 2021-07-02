class UsersController < ApplicationController
  before_action :authenticate_user!, :only => [:history]

  def index
    @users = User.all 
    # render json: @users
  end

  def history
    users = Entry.where(user_id: current_user.id)
    roomId = []
    users.each do |user|
      roomId.push(user.room.id)
    end

    @historyList = Entry.where(room_id: roomId).where.not(user_id: current_user.id)
    # render json: @historyList
  end
end
