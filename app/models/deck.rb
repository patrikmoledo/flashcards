class Deck < ApplicationRecord
  has_many :cards

  validates :title, presence: true
  validates :description, presence: true
end
