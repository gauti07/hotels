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

  def get_ticker
    news = Ticker.all
    render :json => news
  end 
end
