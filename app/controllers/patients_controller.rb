class PatientsController < ApplicationController
	def index
		render json: Patient.all
	end	

	def show
		render json: Patient.find(id: params[:id])
	end

end
