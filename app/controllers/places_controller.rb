class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def show
    @place = Place.find(params["id"])
    @entries = Entry.where({ "place_id" => @place.id })
  end

  def new
  end

  def create
    @place = Place.new
    @place.name = params["inputted_place"]
    @place.save
    
    redirect_to "/places"
  end
  

end
