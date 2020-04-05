class ApplicationController < ActionController::Base

	skip_before_action :verify_authenticity_token

	helper_method :log_in!, :logged_in?, :current_patient, :authorized_patient?, :log_out!

	def log_in!
		session[:patient_id] = @patient.id
	end

	def logged_in?
		!!session[:patient_id]
	end

	def current_patient
		@current_patient ||= Patient.find(session[:patient_id]) if session[:patient_id]
	end
	
	def authorized_patient?
		@patient == current_patient
	end

	def log_out!
		session.clear
	end

end
