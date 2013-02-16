class ImagesController < ApplicationController

  respond_to :json

  def index
    respond_with Image.all
  end

  def show
    respond_with Image.find(params[:id])
  end

  def create
      logger.debug "ImagesController::create"
    @image = Image.new(file: params[:image])
    @image.save
    respond_with @image
  end

  def update
    #
  end

  def destroy
    respond_with Image.destroy(params[:id])
  end

end
