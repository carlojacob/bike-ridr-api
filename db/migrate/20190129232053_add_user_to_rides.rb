# frozen_string_literal: true

class AddUserToRides < ActiveRecord::Migration[5.2]
  def change
    add_reference :rides, :user, foreign_key: true
  end
end
