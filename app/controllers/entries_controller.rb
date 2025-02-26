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
  end
end
