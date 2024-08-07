class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy, inverse_of: :restaurant
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
