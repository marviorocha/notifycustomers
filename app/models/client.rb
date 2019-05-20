class Client < ApplicationRecord

  has_many :notes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :notifications, -> { where notification: false },
                              dependent: :destroy

 validates :name, presence: true, length: { minimum: 3 }
 validates :email, uniqueness: true


def self.birthday
  m = Time.now.month
  Client.where('extract(month from birthday) = ?', m )
end

def self.list_notification
  @notificar = Notification.where(notification: 0)
end


end
