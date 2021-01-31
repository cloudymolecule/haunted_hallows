class Booking < ApplicationRecord
    belongs_to :guest
    belongs_to :room 

    validates :name, presence: true
end
