class Season < ActiveRecord::Base
  attr_accessible :name
  
  has_many :invitation_seasons
  has_many :invitations, through: :invitation_seasons
  
  has_many :menu_seasons
  has_many :menus, through: :menu_seasons
  
  has_many :program_seasons
  has_many :programs, through: :program_seasons
  
  has_many :save_the_date_seasons
  has_many :save_the_dates, through: :save_the_date_seasons
  
  has_many :rsvp_seasons
  has_many :rsvps, through: :rsvp_seasons
  
  has_many :thank_you_card_seasons
  has_many :thank_you_cards, through: :thank_you_card_seasons
end
