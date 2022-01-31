class AcceptCommentsController < ApplicationController
  def create
    accept_comment = AcceptComment.create(accept_comment_params)
    redirect_to "/patients/#{accept_comment.patient.id}"
  end

  private

  def accept_comment_params
    params.require(:accept_comment).permit(:text).merge(user_id: current_user.id, patient_id: params[:patient_id])
  end
end
