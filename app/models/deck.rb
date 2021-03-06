class Deck < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :cards
  has_many :rounds

  validates :category, :creator_id, presence: true
  # validates :private, presence: true, inclusion: { in: [true, false] }

end
