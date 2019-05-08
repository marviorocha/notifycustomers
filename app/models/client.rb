class Client < ApplicationRecord


def self.birthday
  m = Time.now.strftime("%m")
  @birthday = Client.where(["birthday LIKE ?","%#{m}aaa%"])
end

end
