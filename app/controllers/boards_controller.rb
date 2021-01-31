class BoardsController < ApplicationController
    before_action :set_board, only: [:show, :edit, :update, :destroy]

    def index
    end

    def show
    end

    def new
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

    def set_board
        @board = Board.find(params[:id])
    end
end
