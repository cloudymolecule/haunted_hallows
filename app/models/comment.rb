class Comment < ApplicationRecord
    belongs_to :guest
    belongs_to :board

    validates :entry, presence: true

    def self.by_guest(guest)
        where(guest_id: guest)
    end
    
end
