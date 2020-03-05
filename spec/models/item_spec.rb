require 'rails_helper'

describe Item do
  describe '#create' do
    context 'can save' do

      # #   name, price, descriptionがあれば登録できる
      # it "is valid with a name, price, description" do
      #   item = build(:item)
      #   binding.pry
      #   expect(item).to be_valid
      # end
    end
    context 'can not save' do

      #  nameが空では登録できないこと
      it "is invalid without a name" do
        item = build(:item, name: nil)
        item.valid?
        expect(item.errors[:name]).to include("を入力してください")
      end

      #  priceが空では登録できないこと
      it "is invalid without a price" do
        item = build(:item, price: nil)
        item.valid?
        expect(item.errors[:price]).to include("を入力してください")
      end

      #  descriptionが空では登録できないこと
      it "is invalid without a description" do
        item = build(:item, description: nil)
        item.valid?
        # binding.pry
        expect(item.errors[:description]).to include("を入力してください")
      end

      #  prefecture_idが空では登録できない
      it "is invalid without a prefecture_id" do
        item = build(:item, prefecture_id: nil)
        item.valid?
        expect(item.errors[:prefecture]).to include("を入力してください")
      end

      #  conditionが空では登録できないこと
      it "is invalid without a condition" do
        item = build(:item, condition_id: nil)
        item.valid?
        expect(item.errors[:condition]).to include("を入力してください")
      end

      #  shipping_feeが空では登録できない
      it "is invalid without a shipping_fee" do
        item = build(:item, shipping_fee_id: nil)
        item.valid?
        expect(item.errors[:shipping_fee]).to include("を入力してください")
      end

      #  delivery_dateが空では登録できない
      it "is invalid without a delivery_date" do
        item = build(:item, delivery_date_id: nil)
        item.valid?
        expect(item.errors[:delivery_date]).to include("を入力してください")
      end

      #  categoryが空では登録できない
      it "is invalid without a category" do
        item = build(:item, category_id: nil)
        item.valid?
        expect(item.errors[:category]).to include("を入力してください")
      end

      #  prefecture_idが空では登録できない
      it "is invalid without a prefecture_id" do
        item = build(:item, prefecture_id: nil)
        item.valid?
        expect(item.errors[:prefecture]).to include("を入力してください")
      end

      #  shippingMethodが空では登録できない
      it "is invalid without a shippingMethod" do
        item = build(:item, method: nil)
        item.valid?
        expect(item.errors[:method]).to include("を入力してください")
      end

    end
  end
end