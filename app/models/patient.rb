class Patient < ApplicationRecord
	has_many :appointments
	has_many :doctors, through: :appointments

	def patient_appt_count
		self.appointments.size
	end
end
