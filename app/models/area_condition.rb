class AreaCondition
  include ActiveModel::Model
  attr_accessor :dive_day, :area, :entry, :weather, :wind, :wave, :tide, :temperature, :water_temperature, :user_id

  with_options presence: true do
    validates :dive_day
    validates :area
    validates :weather
    validates :wind
    validates :wave
    validates :temperature
    validates :water_temperature
  end
  with_options numericality: { other_than: 1 } do
    validates :entry
    validates :tide
  end
  def save
    area = Area.create(dive_day: dive_day, area: area, entry_id: entry, user_id: user_id)
    Condition.create(weather: weather, wind: wind, wave: wave, temperature: temperature, water_temperature: water_temperature, tide_id: tide, area_id: area.id)
  end
end