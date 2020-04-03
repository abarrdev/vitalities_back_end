class RegistrationsController < ApplicationController
	include AuthTokenConcern
  
	def create
	  patient_user = Patient.create!(
		email: params['patient']['email'],
		password: params['patient']['password'],
		password_confirmation: params['patient']['password_confirmation'],

	  )
  
	auth_token = unique_auth_token

	  if patient
		session[:patient_id] = patient.id
		render json: { status: :created, token: auth_token }
	  else
		render json: { status: 500 }
	  end
	end
  end