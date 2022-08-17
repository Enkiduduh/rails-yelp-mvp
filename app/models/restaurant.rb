class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :phone_number, presence: true
  # , format: { with: /0[1-9](?:\s(\d{2}){4})/, message: 'only allows numbers' }
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
