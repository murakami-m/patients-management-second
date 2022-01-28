class AcceptExistence < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '転院調整あり' },
    { id: 3, name: '転院調整なし' }
  ]

  include ActiveHash::Associations
  has_many :patients

 end