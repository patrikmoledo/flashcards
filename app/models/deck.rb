class Deck < ApplicationRecord
  has_many :cards, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true
end
