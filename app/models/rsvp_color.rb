class RsvpColor < ActiveRecord::Base
  attr_accessible :color_id, :rsvp_id
  belongs_to :color
  belongs_to :rsvp
end
