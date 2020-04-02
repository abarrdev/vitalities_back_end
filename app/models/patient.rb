class Patient < ApplicationRecord
	has_many :records
	has_secure_password
	validates_uniqueness_of :email
end
