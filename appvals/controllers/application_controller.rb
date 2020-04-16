class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

    before_action(:check_login)

    def check_login
        if(session[:student_id] == nil)
            redirect_to("/students/login")
        else
            @current_student = Student.find(session[:student_id])
        end
    end
end
