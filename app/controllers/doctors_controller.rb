class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def show
        assign_doc
        @appointments = @doctor.appointments
    end

    def new
        @doctor = Doctor.new
    end

    def create
    end

    def edit
        assign_doc
    end

    def update

    end

    def delete
    end

    private

    def assign_doc
        @doctor = Doctor.find(params[:id])
    end

    def doc_params
        params.require(:doctor).permit(:name, :department)
    end
end
