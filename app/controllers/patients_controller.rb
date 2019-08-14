class PatientsController < ApplicationController

    def index
        @patients = Patient.all
    end

    def show
        grab_patient
        @appts = @patient.appointments
    end


    private

    def grab_patient
        @patient = Patient.find(params[:id])
    end
end
