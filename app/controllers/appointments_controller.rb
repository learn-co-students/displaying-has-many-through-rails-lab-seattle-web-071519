class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find(params[:id])
        @doc = @appointment.get_doc
        @pat = @appointment.get_pat
    end
end
