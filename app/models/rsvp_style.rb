class RsvpStyle < ActiveRecord::Base
  attr_accessible :rsvp_id, :style_id
  belongs_to :rsvp
  belongs_to :style
end
