class AreaCondition
  include ActiveModel::Model
  attr_accessor :date, :area, :entry, :weather, :wind, :wave, :tide, :temperature, :water_temperature

  with_options presence: true do
    validates :date
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
    area = Area.create(date: date, area: area, entry_id: entry_id)
    Condition.create(weather: weather, wind: wind, wave: wave, temperature: temperature, water_temperature: water_temperature, tide_id: tide_id)
  end
end