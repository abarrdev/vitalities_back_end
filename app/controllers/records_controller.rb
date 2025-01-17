class RecordsController < ApplicationController

	def index
		records = Record.all
		render json: records
	end

	def show
		record = Record.find(params[:id])
		render json: record
	end
	
    def create
		record = Record.create(record_params)
		render json: record
	end

	def update
		# byebug
		record = Record.find(params[:id])
		record.update(record_params)
		render json: record
	end

	def destroy
		record = Record.find(params[:id])
		record.delete
		puts record
		render json: record
	end
	
	private

	def record_params
		params.require(:record).permit(:id, :doctor_first_name, :doctor_last_name, :practice_name, :visit_date, :title, :notes, :patient_id, :med_record)
	end

end
