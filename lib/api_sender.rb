class APISender
  include HTTParty
  base_uri 'https://api-messaging.movile.com/v1'

  def initialize
  end

  def send_one_message(destination, text)
    options =  {
      :body => {
        :destination => destination,
        :messageText => text
      }.to_json,
      :headers => get_header
    }

    @result = self.class.post('/send-sms', options)
  end

  private

  def get_header
    hash = {
      'Content-Type' => 'application/json',
      'authenticationToken' => Rails.application.secrets.API_AUTH_TOKEN,
      'userName' => Rails.application.secrets.API_AUTH_USERNAME
    }
  end
end
