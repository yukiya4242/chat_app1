class RoomsController < ApplicationController
  before_action :authenticate_user! # Deviseのログイン確認

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

   def index
    @rooms = Room.all.order(:id)
  end
end