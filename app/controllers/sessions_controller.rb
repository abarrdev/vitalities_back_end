class SessionsController < ApplicationController

	def create
		@patient = Patient.find_by(email: session_params[:email])
		if @patient && @patient.authenticate(session_params[:password])
			log_in!
			render json: {
				logged_in: true,
				patient: @patient
			}
		else
			render json: {
				status: 401,
				errors: ['no user found', 'verify credentials again or create new account']
			}
		end
	end


	def is_logged_in?
		if logged_in? && current_patient
			render json: {
				logged_in: true,
				patient: current_patient
			}
		else
			render json: {
				logged_in: false,
				message: 'no such user'
			}
		end
	end

	
	def destroy
		log_out!
		render json: {
			status: 200,
			logged_out: true
		}
	end

	private

	def session_params
		params.require(:patient).permit(:email, :password)
	end


	
	
	
end