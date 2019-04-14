class Client < ApplicationRecord
  belongs_to :user, dependent: :destroy

end
