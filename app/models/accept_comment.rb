class AcceptComment < ApplicationRecord
  belongs_to :patient
  belongs_to :user
end
