class InvitationColor < ActiveRecord::Base
  attr_accessible :color_id, :invitation_id
  belongs_to :color
  belongs_to :invitation
end
