# class PatientSerializer < ActiveModel::Serializer
#   attributes :id, :first_name, :last_name, :birthdate, :gender, :email, :records

#   def records
#     self.object.records.map do |record| {
#       doctorFirstName: record.doctor_first_name,
#       doctorLastName: record.doctor_last_name,
#       practiceName: record.practice_name,
#       visitDate: record.visit_date,
#       title: record.title,
#       notes: record.notes
#     }  
#     end
#   end
# end
