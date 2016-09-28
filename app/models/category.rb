class Category < ApplicationRecord
  validates :category, presence: true
  validates_length_of :category, :within => 1..20
  has_many :items, , inverse_of: :category, dependent: :destroy
  accepts_nested_attributes_for :items
end
