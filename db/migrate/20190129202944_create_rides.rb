# frozen_string_literal: true

class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.date :date, null: false
      t.string :location
      t.float :ride_time, null: false
      t.float :ride_distance, null: false

      t.timestamps
    end
  end
end
