class PatientsController < ApplicationController

	def index
		patients = Patient.all
		render json: patients
	end	

	def show
		patient = Patient.find(params[:id])
		render json: patient
	end

	def create
		@patient = Patient.new(patient_params)
		if @patient.save
			log_in!
			render json: {
				status: :created,
				patient: @patient
			} 
		else 
			render json: {
				status: 500,
				errors: @patient.errors.full_messages
			}
		end
	end

	private

	def patient_params
		params.require(:patient).permit(:email, :password, :password_confirmation, :birthdate, :gender, :first_name, :last_name)
	end

end
