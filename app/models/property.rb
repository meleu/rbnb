class Property < ApplicationRecord
  # relations
  ######################################################################
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id

  # validations
  ######################################################################
  validates :title, presence: true
end
