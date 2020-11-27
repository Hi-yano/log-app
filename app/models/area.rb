class Area < ApplicationRecord
  has_many :user

  with_options presence: true do
    validates :date
    validates :area
    validates :entry
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :entry
end
