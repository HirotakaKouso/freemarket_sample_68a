class ShippingMethod < ActiveHash::Base
  self.data = [
    {id: 1, name: '未定'}, {id: 2, name: '普通郵便(定形/定形外)'}, {id: 3, name: 'ゆうパック'},
    {id: 4, name: 'レターパックプラス'}, {id: 5, name: 'レターパックライト'}, {id: 6, name: 'ヤマト宅急便'},
    {id: 7, name: 'はこBOON'}, {id: 8, name: 'クリックポスト'}, {id: 9, name: '飛脚メール便'},
    {id: 10, name: '飛脚宅急便'},{id: 11, name: 'カンガルーミニ便'},{id: 12, name: '宅急便コンパクト'},
    {id: 13, name: 'ゆうメール'},{id: 14, name: 'スマートレター'},{id: 15, name: 'ゆうポケット'}       
  ]
end

