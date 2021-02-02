class SessionsController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :homepage, :omniauth]

    def new
        @guest = Guest.new
    end

    def create
        @guest = Guest.find_by(username: sessions_params[:username])
        if @guest && @guest.authenticate(sessions_params[:password])
            session[:guest_id] = @guest.id
            redirect_to guest_path(@guest)
        else
            redirect_to login_path
        end
    end

    def omniauth
        @guest = Guest.find_or_create_by(uid: auth['uid']) do |g|
            g.username = auth['info']['name']
            g.email = auth['info']['email']
        end
        @guest.save
        session[:guest_id] = @guest.id
        redirect_to guest_path(@guest)
    end

    def destroy
        session.delete :guest_id
        redirect_to login_path
    end

    def homepage
    end

    private

    def sessions_params
        params.require(:guest).permit(:id, :uid, :email, :username, :password, :password_confirmation)
    end

    def auth
        request.env['omniauth.auth']
    end

end
