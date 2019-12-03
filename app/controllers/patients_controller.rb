class PatientsController < ActionController::Base
    belongs_to(:doctor)
end