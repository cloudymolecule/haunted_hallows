class Room < ApplicationRecord
    has_many :bookings
    has_many :guests, through: :bookings
    has_many :boards

    validates :haunting, :note, :do_not_disturb, presence: true

    accepts_nested_attributes_for :bookings
end
