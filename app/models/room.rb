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

    def self.room_number
        number = 100
        r_n = []
        Room.all.each do |r|
            if r.number != nil
                r_n << r.number
            end
        end
        r_n.sort!
        r_n.each do |n|
            if n != number
                return number
            else
                number = number + 1
            end
        end
    end
end
