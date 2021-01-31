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
        @comment = Comment.new
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
end
