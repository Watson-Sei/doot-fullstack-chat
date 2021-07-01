class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index 
    @rooms = Room.all 
    render json: @rooms
  end

  def create
    @room = Room.create
    @entry1 = Entry.create(:room_id => @room.id, :user_id => current_user.id)
    @entry2 = Entry.create(params.permit(:user_id, :room_id).merge(:room_id => @room.id))

    render json: @room
  end

  def show 
    @room = Room.find(params[:id])
    if Entry.where(:user_id => current_user.id, :room_id => @room.id).present?
      @messages = @room.messages
      @entries = @room.entries 
      render json: { messages: @messages, entries: @entries }
    end
  end
end
