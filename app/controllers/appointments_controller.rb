class AppointmentsController < ApplicationController
    def show
        grab_appt
    end

    private

    def grab_appt
        @appt = Appointment.find(params[:id])
    end
end
