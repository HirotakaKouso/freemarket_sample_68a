require 'rails_helper'

describe Prefecture do
  describe '#create' do
    #  prefecture_idが存在すれば登録できること
    it "is valid with a prefecture_id" do
      prefecture = build(:prefecture)
      expect(prefecture).to be_valid
    end

    #  prefecture_idが空であれば登録できないこと
    it "is invalid without a prefecture_id" do
      prefecture = build(:prefecture, prefecture: nil)
      prefecture.valid?
      expect(prefecture.errors[:prefecture]).to include("を入力してください")
    end
  end
end


