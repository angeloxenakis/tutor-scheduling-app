class SubjectsController < ApplicationController
    def index 
        @subjects = Subject.all
    end

    def show
        @subject = Subject.find(params[:id])
    end

    def new
        @subject = Subject.new
    end

    def create 
        Subject.create(subject_params)
        @subjects = Subject.all
        redirect_to subjects_path(@subjects)
    end

    def edit
        @subject = Subject.find(params[:id])
    end

    def update
        @subject = Subject.find(params[:id])
        @subject.update(subject_params)
        redirect_to subject_path(@subject)
    end

    def destroy
        @subject = Subject.find(params[:id])
        @subject.destroy
        @subjects = Subject.all
        redirect_to subjects_path(@subjects)
    end

    private 

    def subject_params
        params.require(:subject).permit(:name)
    end
end