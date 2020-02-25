ShippingFee.create!(
  [
    {fee: '商品価格に込み'},
    {fee: '商品価格とは別途'}
  ]
)
# INSERT INTO `shipping_fees` VALUES
#   (1,'商品価格に込み'),
#   (2,'商品価格とは別途');