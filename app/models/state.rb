class State< ActiveHash::Base
  self.data = [
    { id: 1, name: '--', detail: '--' },
    { id: 2, name: '入院前（入院日より前）', title: '入院前' },
    { id: 3, name: '入院中（入院日以降）', title: '入院中' }
  ]
 
   include ActiveHash::Associations
   has_many :patients
 
end