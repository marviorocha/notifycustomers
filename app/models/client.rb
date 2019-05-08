class Client < ApplicationRecord


def self.birthday
  m = Time.now.strftime("%m")
  Client.where(["birthday LIKE ?","%#{m}___"])
end

end
