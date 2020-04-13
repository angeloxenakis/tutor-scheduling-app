class TutorsController < ApplicationController
    def index 

    end

    def show
        @tutor = Tutor.find(params[:id])
    end

    def new
        @tutor = Tutor.new
        @locations = Location.all
    end

    def create 
        @tutor = Tutor.create(tutor_params)
        redirect_to tutor_path(@tutor)
    end

    def edit

    end

    def update

    end

    private

    def tutor_params
        params.required(:tutor).permit(:name, :location_id)
    end
end