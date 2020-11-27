class Tide < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'とても強い' },
    { id: 3, name: '強い' },
    { id: 4, name: '弱い' },
    { id: 5, name: 'とても弱い' },
    { id: 5, name: 'なし' },
  ]

  include ActiveHash::Associations
  has_many :conditions
end
