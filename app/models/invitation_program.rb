class InvitationProgram < ActiveRecord::Base
  attr_accessible :invitation_id, :program_id
  belongs_to :invitation
  belongs_to :program
end
