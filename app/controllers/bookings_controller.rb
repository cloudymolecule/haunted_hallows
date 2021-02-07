class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy]

    def index
    end

    def show
        @room = Room.find(@booking.room_id)
    end

    def new
        @booking = Booking.new
    end

    def edit
    end

    def update
        if @booking.update(booking_params)
            redirect_to booking_path(@booking)
        else
            render :new
        end
    end

    def destroy
        room = Room.find(@booking.room_id)
        board = Board.find(room.boards.first.id)
        Comment.destroy_comments(board)
        guest = Guest.find(@booking.guest_id)
        room.destroy
        board.destroy
        @booking.destroy
        redirect_to guest_path(guest)
    end

    private

    def set_booking
        @booking = Booking.find(params[:id])
    end

    def booking_params
        params.require(:booking).permit(:guest_id, :room_id, :name)
    end

end
