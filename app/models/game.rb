class Game < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :hardware
  belongs_to :game_genre  

  validates :game_title, presence: true
  validates :hardware_id, numericality: { other_than: 1 } 
  has_one_attached :image
  has_many :comments
end
