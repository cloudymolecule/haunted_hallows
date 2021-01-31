class Board < ApplicationRecord
    belongs_to :room
    has_many :comments

    validates :title, presence: true
end
