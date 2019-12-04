class PatientsController < ActionController::Base

  def index
        @patients = Patient.all
  end

  def login

  end
      
  def patientform
  end


  def show
    @patients = Patient.find(params[:id])
  end
    
  def new
    @patient = Patient.new 
    @doctors = Doctor.all
  end

  def sign_in
    redirect_to "/patientform"
  end
    def sign_up
      redirect_to "/patientform"
    end
  def create 
    @patient = Patient.new(patient_params)
    if @patient.valid?
        @patient.save 
        redirect_to "/patientform"
    else 
      flash[:errors] = @patient.errors.messages
      redirect_to new_patient_path
    end
  end
    
      def edit
        @patients = Patient.find(params[:id])
      end
    
      def update
        @patient.update(patients_params)
        redirect_to @patient
      end
    
      def destroy
        @patient.destroy
        redirect_to patients_path
      end
    
  private
  
    def current_patient
      @patient = Patient.find(session[:patient_id])
    end
  
  def patient_params
    params.require(:patient).permit(:firstname, :lastname, :phone_number, :email, :password, :password_confirmation, )
end
end