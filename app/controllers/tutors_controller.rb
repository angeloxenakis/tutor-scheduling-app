class TutorsController < ApplicationController
    

    def index 
        @tutors = Tutor.all
    end

    def show
        @tutor = Tutor.find(params[:id])
    end

    def new
        @tutor = Tutor.new
        @locations = Location.all
        @subjects = Subject.all
        @tutor_subjects = TutorSubject.all
    end

    def create 
        @tutor = Tutor.create(tutor_params)
        redirect_to tutor_path(@tutor)
    end

    def edit
        @tutor = Tutor.find(params[:id])
        @locations = Location.all
    end

    def update
        @tutor = Tutor.find(params[:id])
        @tutor.update(tutor_params)
        redirect_to tutor_path(@tutor)
    end

    def destroy
        @tutors = Tutor.all
        @tutor = Tutor.find(params[:id])
        @tutor.destroy
        redirect_to tutors_path(@tutors)
    end 

    private

    def tutor_params
        params.required(:tutor).permit(:name, :username, :password, :location_id, subject_ids: [])
    end
end