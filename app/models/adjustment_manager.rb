class AdjustmentManager < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '水野' },
    { id: 3, name: '桜井' },
    { id: 4, name: '高野' }
  ]

  include ActiveHash::Associations
  has_many :patients
end
