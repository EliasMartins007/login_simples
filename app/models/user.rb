class User < ApplicationRecord
  # validações aki 
  has_secure_password

  validates :email, presence: true
end
