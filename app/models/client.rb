class Client < ApplicationRecord


def self.birthday
  m = Time.now.strftime("%m")
  Client.where(birthday: "#{m}")
end

end
