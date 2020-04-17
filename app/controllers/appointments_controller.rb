class AppointmentsController < ApplicationController 
    def index 
        student = Student.find(session[:student_id])
        @appointments = student.appointments
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        if(flash[:appointment_attributes] != nil)
            @appointment = Appointment.new(flash[:appointment_attributes])
        else
            @appointment = Appointment.new
        end
        @students = Student.all
        @locations = Location.all
        @tutors = Tutor.all
        @subjects = Subject.all
    end

    def create 
        @appointment = Appointment.new(appointment_params)
        @appointment.student = @current_student
        if( @appointment.valid? )
            @appointment.save
            redirect_to appointment_path(@appointment)
        else
            p @appointment.errors.full_messages
            flash[:appointment_attributes] = @appointment.attributes
            redirect_to("/appointments/new")
        end  
    end

    def edit
        @appointment = Appointment.find(params[:id])
        @students = Student.all
        @locations = Location.all
        @tutors = Tutor.all
        @subjects = Subject.all
    end

    # def update
    #     @appointment = Appointment.find(params[:id])
    #     @appointment.update(appointment_params)
    #     redirect_to appointment_path(@appointment)
    # end

    def update
        @appointment = Appointment.new(appointment_params)
        @appointment.student = @current_student
        if( @appointment.valid? )
            @appointment.save
            redirect_to appointment_path(@appointment)
        else
            p @appointment.errors.full_messages
            flash[:appointment_attributes] = @appointment.attributes
            redirect_to("/appointments/#{@appointment.id}/edit")
        end  
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        redirect_to appointments_path(@appointments)
    end 

    class ActionView::Helpers::FormBuilder

        def error_messages(form_target, property)
            result = ""
             if( form_target.valid? == false && form_target.errors.messages[property] != nil)
                result += "<ul>"
                form_target.errors.messages[property].each do | error |
                    result+= "<li>#{error}</li>"
                end 
                result += "</ul>"
            end
            result.html_safe
        end
    end

    private

    def appointment_params
        params.required(:appointment).permit(:student_id, :tutor_id, :subject_id, :location_id, :date, :time)
    end
end 