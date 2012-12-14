class RsvpSeason < ActiveRecord::Base
  attr_accessible :rsvp_id, :season_id
  belongs_to :rsvp
  belongs_to :season
end
