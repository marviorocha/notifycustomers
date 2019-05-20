class Notification < ApplicationRecord
 
  belongs_to :client
  
  # Validation Notification
 validates :title, presence: true, length: {minimum:3, maximum:250}
 validates :calendar, presence: true
 validates :messager, presence: true, length: {minimum:5, maximum:500}
  
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
