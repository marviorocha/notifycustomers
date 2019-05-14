class Note < ApplicationRecord
  belongs_to :client
  validates :title, presence: true
  validates :messager, presence: true

end
