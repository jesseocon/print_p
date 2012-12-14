class ThankYouCardStyle < ActiveRecord::Base
  attr_accessible :style_id, :thank_you_card_id
  belongs_to :style
  belongs_to :thank_you_card 
end
