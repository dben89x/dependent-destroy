class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to root_path, notice: "#{@patient.full_name} has been deleted"
  end
end
