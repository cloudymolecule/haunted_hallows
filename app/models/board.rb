class Board < ApplicationRecord
    belongs_to :room
    has_many :comments, dependent: :destroy 

    validates :title, presence: true
end
