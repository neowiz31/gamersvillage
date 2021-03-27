  class GameGenre < ActiveHash::Base
    self.data = [
      { id: 1, name: '--' },
      { id: 2, name: 'RPG' },
      { id: 3, name: 'シミュレーション' },
      { id: 4, name: 'アクション' },
      { id: 5, name: '格闘' },
      { id: 6, name: 'レーシング' },
      { id: 7, name: '恋愛' },
      { id: 8, name: 'アドベンチャー' },
      { id: 9, name: 'シューティング' },
      { id: 10, name: 'パズル' },
      { id: 11, name: '音楽' },
    ]
  
    include ActiveHash::Associations
    has_many :games
  
    end
