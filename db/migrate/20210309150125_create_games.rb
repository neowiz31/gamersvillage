class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string       :game_title,     null: false
      t.integer      :hardware_id,    null: false
      t.integer      :game_genre_id,  null: false
      t.string       :official_url
      t.timestamps
    end
  end
end
