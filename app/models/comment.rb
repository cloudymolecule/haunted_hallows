class Comment < ApplicationRecord
    belongs_to :guest
    belongs_to :board

    validates :entry, presence: true

    def guest_comments
        @comments = Comment.where(guest_id: current_user.id)
    end
end
