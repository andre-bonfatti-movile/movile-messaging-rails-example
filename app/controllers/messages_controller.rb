require "#{Rails.root}/lib/api_sender"

class MessagesController < ActionController::Base
  before_action :require_response, only: :sent

  def new
    @message = Message.new
  end

  def create
    m = Message.create(destination: params[:message][:destination],
      text: params[:message][:text])

    sender = APISender.new
    response = sender.send_one_message(m.destination, m.text)

    redirect_to action: 'sent', sent_response: response
  end

  def sent
    @message_uuid = params[:sent_response]
  end

  private

  def require_response
    redirect_to action: 'new' if params[:sent_response] == nil
  end

end
