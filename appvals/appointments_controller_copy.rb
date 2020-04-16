class AppointmentsController < ApplicationController 
    def index 
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
        @students = Student.all
        @locations = Location.all
        @tutors = Tutor.all
        @subjects = Subject.all
    end

    def create 
        @appointment = Appointment.create(appointment_params)
        if( @appointment.valid? )
            redirect_to ("/appointments/#{@appointment.id}")
        else
            flash[:appointment] = @appointment.errors
            
            redirect_to "/appointments/new"
        end
    end

    def edit
        @appointment = Appointment.find(params[:id])
        @students = Student.all
        @locations = Location.all
        @tutors = Tutor.all
        @subjects = Subject.all
    end

    def update
        @appointment = Appointment.find(params[:id])
        @appointment.update(appointment_params)
        redirect_to appointment_path(@appointment)
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        redirect_to appointments_path(@appointments)
    end 

    private

    def appointment_params
        params.required(:appointment).permit(:student_id, :tutor_id, :subject_id, :location_id, :date, :time)
    end
end 