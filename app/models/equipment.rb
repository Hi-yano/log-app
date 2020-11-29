class Equipment < ApplicationRecord

  belongs_to :area
  has_many   :logs
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :capacity
  belongs_to :type
  belongs_to :suitstype

end