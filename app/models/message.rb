class Message < ActiveRecord::Base

  validates :destination, presence: true
  validates :text,        presence: true

end
