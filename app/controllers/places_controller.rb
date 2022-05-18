class PlacesController < ApplicationController
    
    def index 
    @places = Place.all
    end
    
    def show
        @place=Place.find_by({"id" => params["id"] })
        @posts= Post.where({"place_id" =>@place["id"]}) 
    end

    def new
        @place = Place.new
    end

    def create
        @Place = Place.new
        @Place["name"] = params["place"]["name"]
        @Place.save
        redirect_to "/places"
    end
end
