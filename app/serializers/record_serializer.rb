# class RecordSerializer < ActiveModel::Serializer
#   attributes :id, :doctor_first_name, :doctor_last_name, :practice_name, :visit_date, :title, :notes, :patient
  
#   def patient
#     self.object.patients.map do |patient| {
#         patientId: patient.id,
#         firstName: patient.first_name,
#         lastName: patient.last_name, 
#         birthDate: patient.birthdate,
#         gender: patient.gender
#       }
#     end
#   end
  
# end
