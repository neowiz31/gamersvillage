class Game < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hardware
  belongs_to :game_genre  

  validates :title, :text, presence: true
  validates :hardware_id, numericality: { other_than: 1 } 
  has_one_attached :image
end
