require 'faker'

puts `clear`
puts "Suppression de la base de données en cours..."
City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
SpeDoc.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'doctors'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'patients'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'appointments'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'specialties'")
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'spe_docs'")

puts `clear`
puts "Ecriture de la base de données..."
sleep(2)
10.times do
	city = City.create!(name: Faker::Pokemon.location)
	puts "City : #{city.name}"
end

10.times do
	doctor = Doctor.create!(first_name: Faker::BreakingBad.character, last_name: Faker::Superhero.suffix, zip_code: Faker::HarryPotter.house, city_id: City.all.sample.id)
	puts "Doctor : #{doctor.first_name} | #{doctor.last_name} | #{doctor.zip_code} | #{doctor.city_id}"
end

50.times do
	patient = Patient.create!(first_name: Faker::Superhero.prefix, last_name: Faker::GameOfThrones.character, city_id: City.all.sample.id)
	puts "Patient : #{patient.first_name} | #{patient.last_name} | #{patient.city_id}"
end

70.times do
	appointment = Appointment.create!(date: Faker::Date.forward(365), city_id: City.all.sample.id, doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id)
	puts "Appointment : #{appointment.date} | #{appointment.city_id} | #{appointment.doctor_id} | #{appointment.patient_id}"
end

10.times do
	specialty = Specialty.create!(specialty: Faker::Beer.name)
	puts "Specialty : #{specialty.specialty}"
end

20.times do
	spe_doc = SpeDoc.create!(doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
	puts "SpeDoc : #{spe_doc.doctor_id} | #{spe_doc.specialty_id}"
end
