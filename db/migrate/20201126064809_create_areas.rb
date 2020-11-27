class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.date       :date,     null: false
      t.string     :area,     null: false
      t.integer    :entry_id, null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end