class DoctorsController < ActionController::Base
    has_many(:patients)
end