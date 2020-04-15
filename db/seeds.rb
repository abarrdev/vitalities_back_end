Record.all.delete_all
Patient.all.delete_all



# andy = Patient.create!(first_name: 'Andrea', last_name: 'Barr', birthdate: Date.strptime('Jan 13, 1992', '%b %d, %Y'), gender: 'female', email: Faker::Internet.email(name: 'Andrea'), password: 'password')
shane = Patient.create!(first_name: 'Shane', last_name: 'Andrews', birthdate: Date.strptime('Dec 11, 1989', '%b %d, %Y'), gender: 'non-binary', email: Faker::Internet.email(name: 'Shane'), password: 'password')
# jordan = Patient.create!(first_name: 'Jordan', last_name: 'Keyes', birthdate: Date.strptime('Mar 18, 1972', '%b %d, %Y'), gender: 'male', email: Faker::Internet.email(name: 'Jordan'), password: 'password')
# emily = Patient.create!(first_name: 'Emily', last_name: 'Wilde', birthdate: Date.strptime('Nov 02, 1990', '%b %d, %Y'), gender: 'female', email: Faker::Internet.email(name: 'Emily'), password: 'password')

shane.records.create!(
		doctor_first_name: Faker::Name.first_name,
		doctor_last_name: Faker::Name.last_name,
		practice_name: 'Northeastern Illinois Sleep Specialists',
		visit_date: Faker::Date.backward(days: 60),
		title: 'Sleep Study Consultation',
		notes: 'difficulty, schedule sleep study, availability in May',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Rush Medical',
	visit_date: Faker::Date.backward(days: 1000),
	title: 'ER Visit',
	notes: 'pain in lower abdominal region, operation for appendicitis',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'CVS Minute Clinic Lincoln Park',
	visit_date: Faker::Date.backward(days: 1000),
	title: 'Urgent Care Visit for Sore Throat',
	notes: 'strep test negative, possible viral infection, doctor recommends liquids and rest',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'UIC Neurology',
	visit_date: Faker::Date.backward(days: 60),
	title: 'Sciatic Nerve Pain',
	notes: 'given treatment for pain, referral to physical therapist',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Wicker Park Primary Care',
	visit_date: Faker::Date.backward(days: 1000),
	title: 'Annual Physical',
	notes: 'results came back normal, doctor suggested vitamin B supplements for energy',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Lakeside Dental',
	visit_date: Faker::Date.backward(days: 1000),
	title: 'Routine Cleaning',
	notes: 'no cavities, remider to floss regularly',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Northwestern University Orthopedic',
	visit_date: Faker::Date.backward(days: 40),
	title: 'Initial Physical Therapy Appointment',
	notes: 'limited range of motion in shoulder from job, schedule weekly visits',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Office of Drew Smith, MD',
	visit_date: Faker::Date.backward(days: 1000),
	title: 'Sports Physical',
	notes: 'everything normal, suggests regular stretching to avoid muscle stiffness after running',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Office of Andrea Klein, MD',
	visit_date: Faker::Date.backward(days: 1000),
	title: 'Referral from PCP for Allergy Test',
	notes: 'sensitive to ragweed and pollen',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Loop Dermatology Clinic',
	visit_date: Faker::Date.backward(days: 40),
	title: 'Consultation for Eczema',
	notes: 'prescribed cream to treat, follow up in 3 months',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'West Town Urgent Care',
	visit_date: Faker::Date.backward(days: 1000),
	title: 'Flu Shot',
	notes: 'offered free flu shots to first 100 visitors of the season',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Northwestern University Orthopedic',
	visit_date: Faker::Date.forward(days: 100),
	title: '',
	notes: '',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Advocate Medical ENT',
	visit_date: Faker::Date.forward(days: 100),
	title: '',
	notes: '',
	)


shane.records.create!(
	doctor_first_name: Faker::Name.first_name,
	doctor_last_name: Faker::Name.last_name,
	practice_name: 'Wicker Park Primary Care',
	visit_date: Faker::Date.forward(days: 30),
	title: '',
	notes: '',
	)










# 15.times do andy.records.create!(
# 	doctor_first_name: Faker::Name.first_name,
# 	doctor_last_name: Faker::Name.last_name,
# 	practice_name: Faker::University.name + ' Medical',
# 	visit_date: Faker::Date.backward(days: 3650),
# 	title: Faker::Lorem.sentence,
# 	notes: Faker::Lorem.paragraph,
# 	)
# end

# 5.times do shane.records.create!(
# 	doctor_first_name: Faker::Name.first_name,
# 	doctor_last_name: Faker::Name.last_name,
# 	practice_name: Faker::University.name + ' Medical',
# 	visit_date: Faker::Date.backward(days: 3650),
# 	title: Faker::Lorem.sentence,
# 	notes: Faker::Lorem.paragraph,
# 	)
# end

# 5.times do jordan.records.create!(
# 	doctor_first_name: Faker::Name.first_name,
# 	doctor_last_name: Faker::Name.last_name,
# 	practice_name: Faker::University.name + ' Medical',
# 	visit_date: Faker::Date.backward(days: 3650),
# 	title: Faker::Lorem.sentence,
# 	notes: Faker::Lorem.paragraph,
# 	)
# end

# 5.times do emily.records.create!(
# 	doctor_first_name: Faker::Name.first_name,
# 	doctor_last_name: Faker::Name.last_name,
# 	practice_name: Faker::University.name + ' Medical',
# 	visit_date: Faker::Date.backward(days: 3650),
# 	title: Faker::Lorem.sentence,
# 	notes: Faker::Lorem.paragraph,
# 	)
# end

# # below are 'appointment records', i.e., future

# 3.times do andy.records.create!(
# 	doctor_first_name: Faker::Name.first_name,
# 	doctor_last_name: Faker::Name.last_name,
# 	practice_name: Faker::University.name + ' Medical',
# 	visit_date: Faker::Date.forward(days: 60),
# 	title: "",
# 	notes: "",
# 	)
# end

# 3.times do shane.records.create!(
# 	doctor_first_name: Faker::Name.first_name,
# 	doctor_last_name: Faker::Name.last_name,
# 	practice_name: Faker::University.name + ' Medical',
# 	visit_date: Faker::Date.forward(days: 60),
# 	title: "",
# 	notes: "",
# 	)
# end

# 3.times do jordan.records.create!(
# 	doctor_first_name: Faker::Name.first_name,
# 	doctor_last_name: Faker::Name.last_name,
# 	practice_name: Faker::University.name + ' Medical',
# 	visit_date: Faker::Date.forward(days: 60),
# 	title: "",
# 	notes: "",
# 	)
# end

# 3.times do emily.records.create!(
# 	doctor_first_name: Faker::Name.first_name,
# 	doctor_last_name: Faker::Name.last_name,
# 	practice_name: Faker::University.name + ' Medical',
# 	visit_date: Faker::Date.forward(days: 60),
# 	title: "",
# 	notes: "",
# 	)
# end
