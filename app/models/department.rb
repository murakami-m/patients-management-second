class Department < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '医師' },
    { id: 3, name: '看護師' },
    { id: 4, name: '薬剤師' },
    { id: 5, name: 'リハビリ室' },
    { id: 6, name: '検査科' },
    { id: 7, name: '放射線科' },
    { id: 8, name: '地域医療連携室' },
    { id: 9, name: 'その他(事務)' }
  ]

  include ActiveHash::Associations
  has_many :users
end
