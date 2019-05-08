class Client < ApplicationRecord


def self.birthday
  m = Time.now.month

   Client.where('extract(month from birthday) = ?', m )
end

end
