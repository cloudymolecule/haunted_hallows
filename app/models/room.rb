class Room < ApplicationRecord
    has_many :bookings
    has_many :guests, through: :bookings
    has_many :boards

    validates :haunting, :note, presence: true
    validates_inclusion_of :do_not_disturb, :in => [true, false]

    accepts_nested_attributes_for :bookings
    accepts_nested_attributes_for :boards

    scope :ordered_by_number, -> { order(number: :asc) }

    def self.ordered_by_number
        self.order(:number).order(number: :desc)
    end

end
