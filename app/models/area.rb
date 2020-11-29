class Area < ApplicationRecord

    belongs_to :user
    has_many   :logs
    has_one    :equipment

  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :entry
end
