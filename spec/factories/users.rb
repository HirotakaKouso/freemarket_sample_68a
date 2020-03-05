FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"0000000a"}
    password_confirmation {"0000000a"}
    last_name             {"abc"}
    first_name            {"abc"}
    last_name_kana        {"abc"}
    first_name_kana       {"abc"}
    tel                   {"111"}
    zip_code              {"111"}
    address               {"1"}
    birth_year            {"1"}
    birth_month           {"1"}
    birth_day             {"1"}
    prefecture
  end

end