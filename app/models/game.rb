class Game < ApplicationRecord

  validates :game_name, :game_description, :developer, :publisher, :genre, presence: true

  validates :game_name, length: { maximum: 20 }
  validates :game_description, length: { in: 10..500 }
  validates :developer, length: { maximum: 20 }
  validates :publisher, length: { maximum: 20 }
  validates :genre, length: { in: 3..20 }

end
