class DischargeCommentsController < ApplicationController
  def create
    discharge_comment = DischargeComment.create(discharge_comment_params)
    redirect_to "/patients/#{discharge_comment.patient.id}"
  end

  private

  def discharge_comment_params
    params.require(:discharge_comment).permit(:text).merge(user_id: current_user.id, patient_id: params[:patient_id])
  end
end
