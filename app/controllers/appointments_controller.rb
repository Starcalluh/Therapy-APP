class AppointmentsController < ActionController::Base

def index
    @appointments = Appointment.all
  end

def show
    @appointments = Appointment.find(params[:id])
  end

def new
    @appointments = Appointment.new
    @patients = Patient.all
end

  def create 
    @appointment = Appointment.new(appointments_params)
    if @appointment.valid?
        @appointment.save 
        redirect_to appointment_path(@appointment)
    else 
      flash[:errors] = @appointment.errors.messages
      redirect_to new_appointment_path
    end
  end 
def edit
  @appointments = Appointment.find(params[:id])
  end

def update
    @appointment.update(appointments_params)
    redirect_to @appointment
  end

def destroy
    @appointment.destroy
    redirect_to appointments_path
  end
end