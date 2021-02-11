class RoomsController < ApplicationController
    before_action :set_room, only: [:show, :edit, :update, :destroy]
    
    def index
        @rooms = Room.ordered_by_number
    end

    def show
        @board = @room.boards.first
         
    end

    def new
        @room = Room.new
        @room.bookings.build
        @room.boards.build
    end

    def edit
    end

    def create
        @room = Room.new(room_params)
        @room.bookings.first.guest_id = current_user.id
        @room.number = Room.room_number
        if @room.save
            # @room.boards.first.room_id = @room.id
            # @room.save
            redirect_to room_path(@room)
        else
            render :new
        end
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
        params.require(:room).permit(:haunting, :note, :do_not_disturb, bookings_attributes: [:name], boards_attributes: [:title] )
    end

end
