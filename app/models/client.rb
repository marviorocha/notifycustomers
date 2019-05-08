class Client < ApplicationRecord


def self.birthday
  m = Time.now.month
  Client.where("birthday LIKE ?","%#{m}___")
end

end
