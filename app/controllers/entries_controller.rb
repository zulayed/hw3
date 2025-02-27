class EntriesController < ApplicationController
  def index
    
  end

  def show
  end

  def new
    @place = Place.find(params["id"])
    @entry = Entry.new
  end

  def create
    @place = Place.find(params["id"])
    @entry = Entry.new
    @entry.title = params["title"]
    @entry.description = params["description"]
    @entry.occurred_on = params["occurred_on"]
    @entry.place_id = @place.id
    @entry.save
    redirect_to "/places/#{@place.id}"
  end
end
