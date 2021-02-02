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
        @comment = Comment.new(comment_params)
        if @comment.save
            @board = Board.find(@comment.board_id)
            redirect_to board_path(@board)
        else
            render :new
        end
    end

    def update
        if @comment.save
            @board = Board.find(@comment.board_id)
            redirect_to board_path(@board)
        else
            render :new
        end
    end

    def destroy
        byebug
        board = Board.find(@comment.board_id)
        @comment.destroy
        redirect_to board_path(board)
    end

    private

    def set_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:board_id, :guest_id, :entry)
    end
end
