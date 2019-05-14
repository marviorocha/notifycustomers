class Client < ApplicationRecord

  has_many :notes, dependent: :destroy
  has_many :notifies

# validates :name, presence: true, length: { minimum: 3 }
# validates :email, uniqueness: true


def self.birthday
  m = Time.now.month
  Client.where('extract(month from birthday) = ?', m )
end

end
