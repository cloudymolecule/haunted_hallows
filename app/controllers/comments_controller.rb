class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :edit, :update, :destroy]
    skip_before_action :authorized, only: [:new, :create]

    def index
        @guest = Guest.find(current_user.id)
        @comments = Comment.by_guest(current_user.id)
    end

    def show
    end

    def new
        @comment = Comment.new(board_id: params[:board_id], guest_id: current_user.id)
    end

    def edit
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

    def set_comment
        @comment = Comment.find(params[:id])
    end

    def comments_params
        params.require(:comments).permit(:board_id, :guest_id, :entry)
    end
end
