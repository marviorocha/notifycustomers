class Notification < ApplicationRecord
  belongs_to :client

def passed_notification

@datenow = Time.now

  if @datenow
    Notification.where(notification: 0)
  end

end

end
