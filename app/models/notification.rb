class Notification < ApplicationRecord
  belongs_to :client

def self.sending

@datenow = Time.now

@notif = Notification.where("calendar <= ?", @datenow.ago(1.hour))
@notif.update(notification: 1)

end

end
