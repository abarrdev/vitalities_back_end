class RecordsController < ApplicationController
	def index
		render json: Patients.all
	end	

	def show
		render json: Patient.find(id: params[:id])
	end
end
