class Equipment < ApplicationRecord

  belongs_to :area
  has_many   :logs
  belongs_to :user

end
