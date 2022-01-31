class PatientsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_patient, only: [:edit, :show]

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patient_path
    else
      render :edit
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy
    redirect_to root_path
  end

  private

  def patient_params
    params.require(:patient).permit(:number, :name, :name_kana, :birthday, :age, :gender_id, :address, :disease, :doctor_id,
                                    :ward_id, :key_person_relationship, :remarks, :before_hospitalization, :adjustment_manager_id, :hospitalization_date, :discharge_date, :state_id, :accept_existence_id, :accept_expected_date, :discharge_expected_date, :destination, :key_person_address)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
