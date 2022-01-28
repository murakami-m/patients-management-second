class Doctor < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '菊地Dr' },
    { id: 3, name: '杉本Dr' },
    { id: 4, name: '古川Dr' },
    { id: 5, name: '大西Dr' },
    { id: 6, name: '島田' }
  ]

  include ActiveHash::Associations
  has_many :patients

end