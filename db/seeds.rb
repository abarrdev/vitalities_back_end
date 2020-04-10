Record.all.delete_all
Patient.all.delete_all



andy = Patient.create!(first_name: 'Andrea', last_name: 'Barr', birthdate: Date.strptime('Jan 13, 1992', '%b %d, %Y'), gender: 'female', email: Faker::Internet.email(name: 'Andrea'), password: 'password')
shane = Patient.create!(first_name: 'Shane', last_name: 'Andrews', birthdate: Date.strptime('Dec 11, 1989', '%b %d, %Y'), gender: 'non-binary', email: Faker::Internet.email(name: 'Shane'), password: 'password')
jordan = Patient.create!(first_name: 'Jordan', last_name: 'Keyes', birthdate: Date.strptime('Mar 18, 1972', '%b %d, %Y'), gender: 'male', email: Faker::Internet.email(name: 'Jordan'), password: 'password')
emily = Patient.create!(first_name: 'Emily', last_name: 'Wilde', birthdate: Date.strptime('Nov 02, 1990', '%b %d, %Y'), gender: 'female', email: Faker::Internet.email(name: 'Emily'), password: 'password')

15.times do andy.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: Faker::University.name + ' Medical',
	visit_date: Faker::Date.backward(days: 3650),
	title: Faker::Lorem.sentence,
	notes: Faker::Lorem.paragraph,
	)
end

5.times do shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: Faker::University.name + ' Medical',
	visit_date: Faker::Date.backward(days: 3650),
	title: Faker::Lorem.sentence,
	notes: Faker::Lorem.paragraph,
	)
end

5.times do jordan.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: Faker::University.name + ' Medical',
	visit_date: Faker::Date.backward(days: 3650),
	title: Faker::Lorem.sentence,
	notes: Faker::Lorem.paragraph,
	)
end

5.times do emily.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: Faker::University.name + ' Medical',
	visit_date: Faker::Date.backward(days: 3650),
	title: Faker::Lorem.sentence,
	notes: Faker::Lorem.paragraph,
	)
end

# below are 'appointment records', i.e., future

3.times do andy.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: Faker::University.name + ' Medical',
	visit_date: Faker::Date.forward(days: 60),
	title: "",
	notes: "",
	)
end

3.times do shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: Faker::University.name + ' Medical',
	visit_date: Faker::Date.forward(days: 60),
	title: "",
	notes: "",
	)
end

3.times do jordan.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: Faker::University.name + ' Medical',
	visit_date: Faker::Date.forward(days: 60),
	title: "",
	notes: "",
	)
end

3.times do emily.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: Faker::University.name + ' Medical',
	visit_date: Faker::Date.forward(days: 60),
	title: "",
	notes: "",
	)
end
