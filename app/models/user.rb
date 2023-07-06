class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relations
  ######################################################################
  has_many :properties

  # validations
  ######################################################################
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
