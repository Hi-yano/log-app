class Area < ApplicationRecord
  has_many :user

  with_options presence: true do
    validates :date
    validates :area
  end
  with_options numericality: { other_than: 1 } do
    validates :entry
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :entry
end
