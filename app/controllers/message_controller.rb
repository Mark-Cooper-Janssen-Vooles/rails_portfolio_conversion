class MessageController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    redirect_to thanks_path(id: @message.id)
  end

  def thank_you_page
    if(params[:id])
      @message = Message.find(params[:id])
    end
  end

  private
  def message_params
    params.require(:message).permit(:name, :email_address, :message_body)
  end
end