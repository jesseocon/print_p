class InvitationSeason < ActiveRecord::Base
  attr_accessible :invitation_id, :season_id
  belongs_to :invitation
  belongs_to :season
end
