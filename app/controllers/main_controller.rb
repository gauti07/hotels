class MainController < ApplicationController
  def home
  	@hotels = Hotel.all
  end

  def about
  end

  def contact
  end

  def review
  	@hotel = Hotel.find params[:id]
  end
end

