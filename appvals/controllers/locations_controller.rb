class LocationsController < ApplicationController 
    def index 
        @locations = Location.all
    end

    def show
        @location = Location.find(params[:id])
    end

    def new
        @location = Location.new
        @tutors = Tutor.all
    end

    def create 
        @location = Location.create(location_params)
        redirect_to location_path(@location)
    end

    def edit
        @location = Location.find(params[:id])
    end

    def update
        @location = Location.find(params[:id])
        @location.update(location_params)
        redirect_to location_path(@location)
    end

    def destroy
        @locations = Tutor.all
        @location = Location.find(params[:id])
        @location.destroy
        redirect_to locations_path(@locations)
    end 

    private

    def location_params
        params.required(:location).permit(:name)
    end
end