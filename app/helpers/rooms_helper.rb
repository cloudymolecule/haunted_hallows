module RoomsHelper

    def dnd(room)
        if room.do_not_disturb == true
            "Do Not Disturb, this room is private"
        else
            "This room is public."
        end
    end

end
