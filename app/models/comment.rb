class Comment < ApplicationRecord
    belongs_to :guest
    belongs_to :board

    validates :entry, presence: true
end
