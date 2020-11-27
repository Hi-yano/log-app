class Condition < ApplicationRecord

  belongs_to :user
  belongs_to :log
  belongs_to :area

  with_options presence: true do
    validates :weather
    validates :wind
    validates :wave
    validates :temperature
    validates :water_temperature
  end
  with_options numericality: { other_than: 1 } do
    validates :tide
  end
  
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :tide
end