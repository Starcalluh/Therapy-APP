class Patient < ApplicationRecord
    has_many :doctors
    has_many :appointments


   has_secure_password

    validate do 
        if self.first_name == nil
            self.errors.add :first_name, "Please enter a valide name"
        end
    end
end