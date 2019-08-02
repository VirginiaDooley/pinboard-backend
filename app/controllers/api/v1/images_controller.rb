class Api::V1::ImagesController < ApplicationController
  before_action :set_image, only: [:show]

  # GET /images
  def index
    @images = image.all

    render json: @images
  end

  # GET /images/1
  def show
    render json: @image
  end

  # POST /images
  def create
    binding.pry
    @image = image.new(image_params)

    if @image.save
      render json: @image
    else
      render json: @image.errors
    end
  end

  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
      render json: @image
    else
      render json: @image.errors
    end
  end

  # DELETE /images/1
  # def destroy
  #   @image.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = image.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_params
      params.require(:image).permit(:url, :description, board_attributes: [:boards])
    end
end
