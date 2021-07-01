class MessagesController < ApplicationController
  before_action :authenticate_user!, :only => [:create]

  def create
    if Entry.where(:user_id => current_user.id, :room_id => params[:room_id]).present?
      @message = Message.create(params.permit(:user_id, :content, :room_id).merge(:user_id => current_user.id))
      render status: 200, json: { status: 200, message: 'Message send successfully'}
    else 
      render status: 404, json: { status: 404, message: 'Message transmission failure'}
    end
  end
end
