class Ward < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '内科病棟' },
    { id: 3, name: '外科病棟' },
    { id: 4, name: '整形外科病棟' }
  ]

  include ActiveHash::Associations
  has_many :patients
end
