require 'rails_helper'
RSpec.describe Game, type: :model do
  before do
    @game = FactoryBot.build(:game)
  end
  describe 'ゲーム新規登録' do
    context 'ゲーム新規登録できるとき' do
      it '全項目が存在すれば登録できる' do
        @game = FactoryBot.build(:game)
        expect(@game).to be_valid
      end
      it '公式URLが存在しなくても登録できる' do
        @game.official_url = nil
        expect(@game).to be_valid        
      end
    end
    context 'ゲーム新規登録ができないとき' do
      it 'ゲーム画像が無ければ登録できない' do
        @game.image = nil
        @game.valid?
        expect(@game.errors.full_messages).to include("Image can't be blank")
      end
      it '商品名が無ければ登録できない' do
        @game.game_title = ''
        @game.valid?
        expect(@game.errors.full_messages).to include("Game title can't be blank")
      end
      it '機種が「---」では登録できない' do
        @game.hardware_id = 1
        @game.valid?
        expect(@game.errors.full_messages).to include('Hardware must be other than 1')
      end
      it 'ゲームジャンルが「---」では登録できない' do
        @game.game_genre_id = 1
        @game.valid?
        expect(@game.errors.full_messages).to include('Game genre must be other than 1')
      end
    end
  end
end
