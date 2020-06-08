class PatientsController < ActionController::Base

  def index
        @patients = Patient.all
  end

  def login

  end
      
  def patientform
    @patient = current_patient
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


  def create 
    @patient = Patient.new(patient_params)
    if @patient.valid?
        @patient.save 
        session[:patient_id] = @patient.id
        redirect_to "/patientform"
    else 
      flash[:errors] = @patient.errors.messages
      redirect_to "/signup"
    end
  end
    
      def edit
        @patients = Patient.find(params[:id])
      end
    
      def update
        @patient = current_patient
        puts params
        @patient.update(you_have_been_to_therapy_before: params[:you_have_been_to_therapy_before],
        you_are_currently_on_medication: params[:you_are_currently_on_medication],
        you_have_experienced_suicidal_thoughts: params[:you_have_experienced_suicidal_thoughts],
        you_have_a_known_mental_illness: params[:you_have_a_known_mental_illness],
        you_are_you_committed_to_treatment: params[:you_are_you_committed_to_treatment],
        you_have_any_medical_problems: params[:you_have_any_medical_problems],
        you_experience_hallucinations: params[:you_experience_hallucinations],
        are_you_sexually_active: params[:are_you_sexually_active],
        you_have_pets: params[:you_have_pets],
        you_have_been_convicted_of_a_crime: params[:you_have_been_convicted_of_a_crime],
        you_are_in_a_relationship: params[:you_are_in_a_relationship],
        you_speak_english_fluently: params[:you_speak_english_fluently])
        redirect_to "/patients/#{@patient.id}"
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
    params.permit(:first_name, :last_name, :phone_number, :email, :password, :password_confirmation, )
  end
end