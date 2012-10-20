class ImagesController < ApplicationController

  respond_to :json

  def index
    respond_with Image.all
  end

  def show
    respond_with Image.find(params[:id])
  end

  def create
    #
  end

  def update
    #
  end

  def destroy
    respond_with Image.destroy(params[:id])
  end

end
