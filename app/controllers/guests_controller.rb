class GuestsController < ApplicationController
    before_action :set_guest, only: [:show, :edit, :update, :destroy]
    skip_before_action :authorized, only: [:new, :create]

    def index
        @guests = Guest.all
    end

    def show
    end

    def new
        @guest = Guest.new
    end

    def edit
    end

    def create
        @guest = Guest.new(guest_params)
        
        if @guest.save
            session[:guest_id] = @guest.id
            redirect_to @guest
        else
            render :new
        end
    end

    def update
        if @guest.update(guest_params)
            redirect_to @guest
        else
            render :edit
        end
    end

    def destroy
    end

    private

    def set_guest
        @guest = Guest.find(params[:id])
    end

    def guest_params
        params.require(:guest).permit(
            :username, 
            :email, 
            :bio,
            :age, 
            :gender,
            :uid, 
            :password, 
            :password_confirmation)
    end
end