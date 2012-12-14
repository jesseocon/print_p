class InvitationRsvp < ActiveRecord::Base
  attr_accessible :invitation_id, :rsvp_id
  belongs_to :invitation
  belongs_to :rsvp
end
