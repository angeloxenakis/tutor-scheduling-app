class StudentsController < ApplicationController
    
    skip_before_action(:check_login, only: [:view_login, :handle_login])

    def view_login
        render(:login)
    end

    def handle_login
        student = Student.find_by({username: params[:username]})
        if(student.authenticate(params[:password]))
            session[:student_id] = student.id 
            redirect_to student_path(student)
        else
            p "Login Failed"
        end
    end


    # def index 
    #     @students = Student.all
    # end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create 
        @student = Student.create(student_params)
        @students = Student.all
        redirect_to students_path(@students)
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path(@students)
    end

    private 

    def student_params
        params.require(:student).permit(:name)
    end
end