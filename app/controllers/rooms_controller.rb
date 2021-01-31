class RoomsController < ApplicationController
    before_action :set_room, only: [:show, :edit, :update, :destroy]

    def index
        if params[:guest_id]
            @rooms = Guest.find(params[:guest_id]).rooms
        else
            @rooms = Room.all
        end
    end

    def show
    end

    def new
        @room = Room.new
        @room.bookings.build
    end

    def edit
    end

    def create
        room = Room.create(room_params)
        
        byebug
        redirect_to room_path(room)
    end

    def update
    end

    def destroy
    end

    private

    def set_room
        @room = Room.find(params[:id])
    end

    def room_params
        params.require(:room).permit(:haunting, :note, :do_not_disturb, bookings_attributes: [:name] )
    end
    

end
