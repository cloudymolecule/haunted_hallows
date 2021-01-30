class Board < ApplicationRecord
    belongs_to :room
    has_many :comments
end
