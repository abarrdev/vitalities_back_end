class Record < ApplicationRecord
	belongs_to :patient
	has_one_attached :med_record
end
