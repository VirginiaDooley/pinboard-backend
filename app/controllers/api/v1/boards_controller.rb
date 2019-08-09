class Api::V1::BoardsController < ApplicationController
  before_action :set_board, only: [:show]

  # GET /boards
  def index
    @boards = Board.all

    render json: @boards
  end

  # GET /boards/1
  def show
    render json: @board
  end

  # POST /boards
  def create
    @board = Board.new(board_params)

    if @board.save
      render json: @board
    else
      render json: @board.errors
    end
  end

  # PATCH/PUT /boards/1
  # def update
  #   if @board.update(board_params)
  #     render json: @board
  #   else
  #     render json: @board.errors
  #   end
  # end

  # DELETE /boards/1
  # def destroy
  #   @board.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @board = Board.find(params[:id])
    end

    def board_params
      params.require(:board).permit(:title, images_attributes: [:url, :description])
    end
end
