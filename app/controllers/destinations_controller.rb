class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
    @post = Post.find(params[:id])
  end
end
