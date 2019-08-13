class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def show
        @doctor = Doctor.find(params[:id])
        @appointments = @doctor.appointments
        @patients = @doctor.patients
    end
end
