class MessagesController < ApplicationController
  layout 'messages'

  def index
    @msg = 'Messages.data'
    @data = 'Message.all'
  end

  def show
    @msg = 'Indexed data'
    @message = 'Message.find(params[:id])'
  end

  def add
    @msg = "Message data"
    @message = "Message.new"
  end

  def create
    @message = Message.new message_params
    if @message.save then
        redirect_to '/message'
    else
      render 'add'
    end
  end

  def edit
    @msg = "edit data.[id = ''+ params[:id] + '']"
    @message = "Message.find(params[:id])"
  end

  def update
    obj = Message.find(params[:id])
    obj.update(message_params)
    redirect_to '/messages'
  end

  def delete
    obj = Message.find(params[:id])
    obj.destroy
    redirect_to '/message'
  end

  private
  def message_params
    params.require(:message).permit(:card_id, :titile, :author)
  end


end
