class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'プチプラ' },
    { id: 3, name: 'デパコス' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :items
  end
