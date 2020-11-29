class Condition < ApplicationRecord

    belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :tide
end