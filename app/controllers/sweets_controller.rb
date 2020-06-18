class SweetsController < ApplicationController

  def index
    @sweets = Sweet.all
  end

  def show
    @sweet = Sweet.find_by(params[:id])
  end
end
