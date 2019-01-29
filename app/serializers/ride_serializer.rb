# frozen_string_literal: true

class RideSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :ride_time, :ride_distance
end
