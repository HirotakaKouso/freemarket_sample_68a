require 'rails_helper'

describe Image do
  describe '#create' do
    # #  imageが存在すれば登録できること
    # it "is valid with a image" do
    #   image = build(:image)
    #   binding.pry
    #   expect(image).to be_valid
    # end

    #  imageが空であれば登録できないこと
    it "is invalid without a image" do
      image = build(:image, src: nil)
      image.valid?
      expect(image.errors[:src]).to include("を入力してください")
    end
  end
end

