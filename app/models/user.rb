class User < ApplicationRecord
  has_one :client
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  ROLES = %i[user admin banned ]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_save :client_created

  def client_created
    @user = User.last
    @user.create_client(created_at: Time.now)
  end


end
