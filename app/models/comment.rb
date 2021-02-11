class Comment < ApplicationRecord
    belongs_to :guest
    belongs_to :board

    validates :entry, presence: true

    def self.by_guest(guest)
        where(guest_id: guest)
    end

    # def self.destroy_comments(board)
    #     Comment.all.each do |c|
    #         if c.board_id == board.id
    #             c.destroy
    #         end
    #     end
    # end
    
end
