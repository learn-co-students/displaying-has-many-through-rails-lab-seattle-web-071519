class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def get_doc
        doc = Doctor.find(self.doctor_id)
    end

    def get_pat
        pat = Patient.find(self.patient_id)
    end
end
