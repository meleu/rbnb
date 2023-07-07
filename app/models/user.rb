class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # custom methods
  ######################################################################
  def full_name
    "#{first_name} #{last_name}"
  end

  # custom methods
  ######################################################################
  has_many :properties

  # validations
  ######################################################################
  validates :email, presence: true, uniqueness: true
end
