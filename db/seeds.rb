# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

# ,
# {
#    
#   }, 
#   {
#     name: "Sugar Land",
#     location: "3425 Hwy 6, Sugar Land, TX 77478",
#   },


  
doc1 = Doctor.create({
    name: "John Smith",
    location: "2400 Augusta Drive Suite 300, Houston, TX 77057",
})
doc2 = Doctor.create({
    name: "Thomas Williams",
    location: "815 Walker St, Houston, TX 77002",
})

p1 = Patient.create(name:"Anne Rusk", phone_number:8325568744)
p2 = Patient.create(name:"John Smith", phone_number:8325568744)
p3 = Patient.create(name:"Pam Rogers", phone_number:8325568744)
p4 = Patient.create(name:"George Hicks", phone_number:8325568744)
p5 = Patient.create(name:"Laura Maple", phone_number:8325568744)
p6 = Patient.create(name:"Sam Williams", phone_number:8325568744)
p7 = Patient.create(name:"Bonnie Miller", phone_number:8325568744)
p8 = Patient.create(name:"David Brown", phone_number:8325568744)

Appointment.create(doctor_id: doc1.id, patient_id: p1.id) 
Appointment.create(doctor_id: doc1.id, patient_id: p2.id) 
Appointment.create(doctor_id: doc1.id, patient_id: p3.id) 
Appointment.create(doctor_id: doc2.id, patient_id: p4.id) 
Appointment.create(doctor_id: doc2.id, patient_id: p5.id) 
Appointment.create(doctor_id: doc2.id, patient_id: p6.id) 
Appointment.create(doctor_id: doc2.id, patient_id: p7.id) 
Appointment.create(doctor_id: doc1.id, patient_id: p8.id) 

puts "you got it homie!!!!"



# l1 = Listing.new("Astoria")
# l2 = Listing.new("Long Island City")
# l3 = Listing.new("Montrose")

# g1 = Guests.new("Tommy")
# g2 = Guests.new("Alice")
# g3 = Guests.new("Richie")

# lg1 = Trip.new(l1,g1)
# lg2 = Trip.new(l2,g2)
# lg3 = Trip.new(l3,g3)
# lg4 = Trip.new(l3,g1)
# lg5 = Trip.new(l2,g1)
# lg6 = Trip.new(l3,g3)