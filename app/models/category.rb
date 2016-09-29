class Category < ApplicationRecord
  validates :category, presence: true
  validates_length_of :category, :within => 1..20
  has_many :items, dependent: :destroy
end
