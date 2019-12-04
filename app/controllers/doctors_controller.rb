class DoctorsController < ActionController::Base

    def index
        @doctors = Doctor.all
      end
    
    def show
        @doctor = Doctor.find(params[:id])
      end
    
    def new
        @doctor = Doctor.new
        @patients = Patient.all
      end
    
    def create
        @doctor = Doctor.create(doctors_params)
        redirect_to @doctor
    end
    
    def edit
        @patients = Patient.all
      end
    
    def update
        @patient.update(doctors_params)
        redirect_to @patient
      end

    def destroy
        @doctor.destroy
        redirect_to doctors_path
    end
end