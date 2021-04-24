FactoryBot.define do
  factory :game do
    game_title    { 'テスト' }
    hardware_id   { 2 }
    game_genre_id { 2 }
    official_url  { 'http://yahoo/'} 

    after(:build) do |game|
      game.image.attach(io: File.open('public/images/sumple.jpg'), filename: 'sumple.png')
    end
  end
end
