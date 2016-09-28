class Item < ApplicationRecord
  validates :name, presence: true
  validates_length_of :name, :within => 1..40
  validates_uniqueness_of :name, :message => "already exists"
  validates :description, presence: true
  belongs_to :category, inverse_of: :items
  validates_presence_of :category
end
