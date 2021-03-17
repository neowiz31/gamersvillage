class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string       :game_title
      t.integer      :hardware_id
      t.integer      :game_genre_id
      t.string       :official_url
      t.timestamps
    end
  end
end
