class ThankYouCardColor < ActiveRecord::Base
  attr_accessible :color_id, :thank_you_card_id
  belongs_to :color
  belongs_to :thank_you_card
end
