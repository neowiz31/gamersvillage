class Game < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hardware
  belongs_to :game_genre  

  validates :game_title, presence: true
  validates :hardware_id, numericality: { other_than: 1 } 
  validates :game_genre_id, numericality: { other_than: 1 } 
  validates :image, presence: true
  has_one_attached :image
  has_many :comments
end
