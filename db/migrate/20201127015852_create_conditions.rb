class CreateConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :conditions do |t|
      t.string     :weater,            null: false
      t.string     :wind,              null: false
      t.integer    :temperature,       null: false
      t.integer    :water_temperature, null: false
      t.integer    :wave,              null: false
      t.integer    :tide_id,           null: false
      t.references :user,              null: false, foreign_key: true
      t.references :area,              null: false, foreign_key: true
      t.references :log,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
