class DataController < ApplicationController
  before_filter :authenticate_user!
  def insert
    hotel = Hotel.new
    hotel.name = params[:name]
    hotel.city = params[:city]
    hotel.description = params[:description]
    hotel.rating = params[:rating]
    hotel.user_id = current_user.id
    if hotel.save
      flash[:notice] = "Saved Successfully"
      redirect_to manage_path and return
    else
      flash[:error] = "The Data you have entered needs to be checked"
      redirect_to manage_path and return
    end
  end

  def update
    hotel = current_user.hotels.find params[:id]
    hotel.name = params[:name]
    hotel.city = params[:city]
    hotel.description = params[:description]
    hotel.rating = params[:rating] 

    if hotel.save
      flash[:notice] = "Saved Successfully"
      redirect_to edit_url(params[:id]) and return
    else
      flash[:error] = "The Data you have entered needs to be checked"
      redirect_to edit_url(params[:id]) and return
      end
  end

  def delete
    hotel = current_user.hotels.find params[:id]
    if hotel.delete
      flash[:notice] = "Deleted #{hotel.name}" 
      redirect_to manage_path and return
    else
      flash[:error] = "Error"
      redirect_to manage_path and return
    end
  end

  def show
    @hotels = current_user.hotels
  end

  def add_form
  end

  def edit_form
    @hotel = current_user.hotels.find params[:id]
  end

  def addreview
    review = Review.new
    review.content = params[:content]
    review.hotel_id = params[:id]
    review.user_id = current_user.id
    if review.save
      flash[:notice] = "Saved Successfully"
      redirect_to review_url(params[:id]) and return
    else
      flash[:error] = "The Data you have entered needs to be checked"
      redirect_to review_url(params[:id]) and return
      end
  end

  def index
  end
end
