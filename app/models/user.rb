class User < ApplicationRecord

  has_one :client, dependent: :destroy

  ROLES = %i[user admin banned ]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 
  after_create  :client_created

  def client_created
    @user = User.last
    @user.create_client(tel:Faker::PhoneNumber.phone_number,
                        cel:Faker::PhoneNumber.cell_phone, cpf: Faker::Number.number(11),
                        birthday: Faker::Date.birthday(18, 40), created_at: Time.now)

  end


end
