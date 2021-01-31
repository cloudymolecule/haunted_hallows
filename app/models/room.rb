class Room < ApplicationRecord
    has_many :bookings
    has_many :guests, through: :bookings
    has_many :boards

    accepts_nested_attributes_for :bookings
end
