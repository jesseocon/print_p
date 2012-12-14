class ThankYouCardSeason < ActiveRecord::Base
  attr_accessible :season_id, :thank_you_card_id
  belongs_to :season
  belongs_to :thank_you_card
end
