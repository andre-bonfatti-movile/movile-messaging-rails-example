Rails.application.routes.draw do
  root 'messages#new'

  get  '/message_sent' => 'messages#sent'
  post '/messages' => 'messages#create'
end
