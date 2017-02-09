class User < ApplicationRecord
  
  # default devise modules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # custom validators for access code when registering 
  validates :code, presence: true
  validates :code, uniqueness: true
  validates :code, length: { is: 3, wrong_length: "is not valid"}
  validates :code, format: { with: /\A[a-zA-Z]+\z/, message: "is not valid" }
end
