class InvitationMenu < ActiveRecord::Base
  attr_accessible :invitation_id, :menu_id
  belongs_to :invitation
  belongs_to :menu
end
