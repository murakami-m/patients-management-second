class State< ActiveHash::Base
  self.data = [
    { id: 1, name: '--', detail: '--' },
    { id: 2, name: '入院前（入院日より前）', title: '入院前' },
    { id: 3, name: '入院中（入院日以降）', title: '入院中' },
    { id: 4, name: '退院後（新規登録時は選択不可）', title: '退院後' }
  ]
 
   include ActiveHash::Associations
   has_many :patients
 
end