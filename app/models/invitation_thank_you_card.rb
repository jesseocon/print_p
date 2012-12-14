class InvitationThankYouCard < ActiveRecord::Base
  attr_accessible :invitation_id, :thank_you_card_id
  belongs_to :invitation
  belongs_to :thank_you_card
end
