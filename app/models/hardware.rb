class Hardware < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'PS' },
    { id: 3, name: 'PS2' },
    { id: 4, name: 'PS3' },
    { id: 5, name: 'PS4' },
    { id: 6, name: 'PS5' },
    { id: 7, name: 'PSP' },
    { id: 8, name: 'PSVR' },
    { id: 9, name: 'セガサターン' },
    { id: 10, name: 'ドリームキャスト' },
    { id: 11, name: 'ピコ' },
    { id: 12, name: 'GB' },
    { id: 13, name: 'GBA' },
    { id: 14, name: 'DS' },
    { id: 15, name: '3DS' },
    { id: 16, name: '64' },
    { id: 17, name: 'ゲームキューブ' },
    { id: 18, name: 'Wii' },
    { id: 19, name: 'WiiU' },
    { id: 20, name: 'Switch' },
    { id: 21, name: 'PC' },
    { id: 22, name: 'アプリ' },
    { id: 23, name: 'メガドライブ' },
    { id: 24, name: 'XBOX' }
  ]

  include ActiveHash::Associations
  has_many :games

  end