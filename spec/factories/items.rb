FactoryBot.define do

  factory :item do
    name            {"abc"}
    price           {111}
    description     {"aaa"}
    category
    brand
    # size
    condition
    shipping_fee
    prefecture
    delivery_date
    shippingMethod
    # method       {"未定"}
  end

end