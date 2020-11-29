class AreaCondition
  include ActiveModel::Model
  attr_accessor :dive_day, :region, :entry_id, :weather, :wind, :wave, :tide_id, :temperature, :water_temperature, :user_id, :area_id

  with_options presence: true do
    validates :dive_day
    validates :region
    validates :weather
    validates :wind
    validates :wave
    validates :temperature
    validates :water_temperature
  end
  with_options numericality: { other_than: 1 } do
    validates :entry_id
    validates :tide_id
  end

  def save
    area = Area.create(dive_day: dive_day, region: region, entry_id: entry_id, user_id: user_id)
    Condition.create(weather: weather, wind: wind, wave: wave, temperature: temperature, water_temperature: water_temperature, tide_id: tide_id, area_id: area.id)
end