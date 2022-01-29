class PatientsController < ApplicationController
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
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    patient = Patient.find(params[:id])
    if patient.update(patient_params)
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
end
