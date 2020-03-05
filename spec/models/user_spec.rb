require 'rails_helper'

describe User do
  describe '#create' do
    context 'can save' do

      #  nicknameとemail、passwordとpassword_confirmationなど、全てが存在すれば登録できること
      it "is valid with a nickname, email, password, password_confirmation, last_name, first_name, last_name_kana, first_name_kana, tel, zip_code, birth_year, birth_month, birth_day, address" do
        user = build(:user)
        expect(user).to be_valid
      end

      #  passwordが英数字7文字以上であれば登録できること
      it "is valid with a password that has more than 7 characters " do
        user = build(:user, password: "000000a", password_confirmation: "000000a")
        expect(user).to be_valid
      end

    end
    
    context 'can not save' do
      #  nicknameが空では登録できないこと
      it "is invalid without a nickname" do
        user = build(:user, nickname: nil)
        user.valid?
        expect(user.errors[:nickname]).to include("を入力してください")
      end
      
      #  emailが空では登録できないこと
      it "is invalid without an email" do
        user = build(:user, email: nil)
        user.valid?
        expect(user.errors[:email]).to include("を入力してください")
      end

      #  passwordが空では登録できないこと
      it "is invalid without a password" do
        user = build(:user, password: nil)
        user.valid?
        expect(user.errors[:password]).to include("を入力してください")
      end

      #  passwordが存在してもpassword_confirmationが空では登録できないこと
      it "is invalid without a password_confirmation although with a password" do
        user = build(:user, password_confirmation: "")
        user.valid?
        expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
      end
      
      
      #  passwordが6文字以下であれば登録できないこと
      it "is invalid with a password that has less than 6 characters" do
        user = build(:user, password: "000000", password_confirmation: "000000")
        user.valid?
        expect(user.errors[:password]).to include("は7文字以上で入力してください")
      end

      #  last_nameが空では登録できない
      it "is invalid without a last_name" do
        user = build(:user, last_name: nil)
        user.valid?
        expect(user.errors[:last_name]).to include("を入力してください")
      end

      #  first_nameが空では登録できない
      it "is invalid without a first_name" do
        user = build(:user, first_name: nil)
        user.valid?
        expect(user.errors[:first_name]).to include("を入力してください")
      end

      #  last_name_kanaが空では登録できない
      it "is invalid without a last_name_kana" do
        user = build(:user, last_name_kana: nil)
        user.valid?
        expect(user.errors[:last_name_kana]).to include("を入力してください")
      end

      #  first_name_kanaが空では登録できない
      it "is invalid without a last_name_kana" do
        user = build(:user, last_name_kana: nil)
        user.valid?
        expect(user.errors[:last_name_kana]).to include("を入力してください")
      end

      #  telが空では登録できない
      it "is invalid without a tel" do
        user = build(:user, tel: nil)
        user.valid?
        expect(user.errors[:tel]).to include("を入力してください")
      end

      #  zip_codeが空では登録できない
      it "is invalid without a zip_code" do
        user = build(:user, zip_code: nil)
        user.valid?
        expect(user.errors[:zip_code]).to include("を入力してください")
      end

      #  addressが空では登録できない
      it "is invalid without a address" do
        user = build(:user, address: nil)
        user.valid?
        expect(user.errors[:address]).to include("を入力してください")
      end

      #  birth_yearが空では登録できない
      it "is invalid without a birth_year" do
        user = build(:user, birth_year: nil)
        user.valid?
        expect(user.errors[:birth_year]).to include("を入力してください")
      end

      #  birth_monthが空では登録できない
      it "is invalid without a birth_month" do
        user = build(:user, birth_month: nil)
        user.valid?
        expect(user.errors[:birth_month ]).to include("を入力してください")
      end

      #  birth_day が空では登録できない
      it "is invalid without a birth_day" do
        user = build(:user, birth_day: nil)
        user.valid?
        expect(user.errors[:birth_day ]).to include("を入力してください")
      end


      #重複したemailが存在する場合登録できないこと
      it "is invalid with a duplicate email address" do
        user = create(:user)
        another_user = build(:user, email: user.email)
        another_user.valid?
        expect(another_user.errors[:email]).to include("はすでに存在します")
      end

      #  prefecture_idが空では登録できない
      it "is invalid without a prefecture_id" do
        user = build(:user, prefecture_id: nil)
        user.valid?
        expect(user.errors[:prefecture]).to include("を入力してください")
      end

      
      
    end
  end
end