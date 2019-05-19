class Notification < ApplicationRecord
  belongs_to :client

def self.sending

@datenow = Time.now
@notif = Notification.where("calendar < ?", @datenow.ago(1.minute))
@notif.update(notification: 1)

@notification = Notification.where("calendar >= ?", @datenow.ago(1.minute))

# Sender notification for email now
@notification.each do |sender|
 NotificationMailer.send_notification(sender.client.email,
       sender.title, sender.messager).deliver_now
end


end



end
