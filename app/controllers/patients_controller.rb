class PatientsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_patient, only: [:edit, :show]

  def index
    @patients = Patient.where(state_id: '3')
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
    @accept_comment = AcceptComment.new
    @accept_comments = @patient.accept_comments.includes(:user)
    @discharge_comment = DischargeComment.new
    @discharge_comments = @patient.discharge_comments.includes(:user)
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

  def search
    @patients = Patient.search(params[:keyword]).order('hospitalization_date ASC')
  end

  def current_medicine
    @patients = Patient.where(state_id: '3', ward_id: '2').order('hospitalization_date ASC')
  end

  def current_surgery
    @patients = Patient.where(state_id: '3', ward_id: '3').order('hospitalization_date ASC')
  end

  def current_orthopedics
    @patients = Patient.where(state_id: '3', ward_id: '4').order('hospitalization_date ASC')
  end

  def before_hospitalization
    @patients = Patient.where(state_id: '2').order('accept_expected_date ASC')
  end

  def discharged_patients
    @patients = Patient.where(state_id: '4').order('discharge_date ASC')
  end

  def discharged_medicine
    @patients = Patient.where(state_id: '4', ward_id: '2').order('discharge_date ASC')
  end

  def discharged_surgery
    @patients = Patient.where(state_id: '4', ward_id: '3').order('discharge_date ASC')
  end

  def discharged_orthopedics
    @patients = Patient.where(state_id: '4', ward_id: '4').order('discharge_date ASC')
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
