class Patient < ApplicationRecord
    has_many :doctors
    has_many :appointments


   
validate do 
    if self.name == nil
        self.errors.add :name, "Please enter a valide name"
    end
end
end