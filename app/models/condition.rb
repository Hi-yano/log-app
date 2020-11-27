class Condition < ApplicationRecord

  belongs_to :user
  has_many   :log
  belongs_to :area

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :tide
end