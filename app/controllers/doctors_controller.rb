class DoctorsController < ActionController::Base
    def show
        @doctor = Doctor.find(params[:id])
        @appointments = @doctor.appointments
    end
end