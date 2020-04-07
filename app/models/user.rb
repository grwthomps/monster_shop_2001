class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true

  validates_presence_of :name,
                        :address,
                        :city,
                        :state,
                        :zip,
                        :password
end
