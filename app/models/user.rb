class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :code, presence: true
  validates :code, uniqueness: true
  validates :code, length: { is: 3, wrong_length: "is not valid"}
  validates :code, format: { with: /\A[a-zA-Z]+\z/, message: "is not valid" }
end
