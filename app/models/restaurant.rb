class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, format: { with: /\d{10}/, message: 'only allows numbers' }
end
