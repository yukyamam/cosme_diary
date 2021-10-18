class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '下地' },
    { id: 3, name: 'ファンデーション' },
    { id: 4, name: 'コンシーラー' },
    { id: 5, name: 'アイブロウ' },
    { id: 6, name: 'アイシャドウ' },
    { id: 7, name: 'アイライナー' },
    { id: 8, name: 'マスカラ' },
    { id: 9, name: 'チーク' },
    { id: 10, name: 'ハイライト・シェーディング・パウダー' },
    { id: 11, name: 'リップスティック'},
    { id: 12, name: 'リップグロス'},
    { id: 13, name: 'メイク落とし'},
    { id: 14, name: '洗顔'},
    { id: 15, name: '化粧水'},
    { id: 16, name: '乳液'},
    { id: 17, name: '美容液'},
    { id: 18, name: 'その他'}
  ]

  include ActiveHash::Associations
  has_many :items
  end
