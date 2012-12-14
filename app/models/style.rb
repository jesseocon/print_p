class Style < ActiveRecord::Base
  attr_accessible :name
  
  has_many :invitation_styles
  has_many :invitations, through: :invitation_styles
  
  has_many :menu_styles
  has_many :menus, through: :menu_styles
  
  has_many :program_styles
  has_many :programs, through: :program_styles
  
  has_many :save_the_date_styles
  has_many :save_the_dates, through: :save_the_date_styles
  
  has_many :rsvp_styles
  has_many :rsvps, through: :rsvp_styles
  
  has_many :thank_you_card_styles
  has_many :thank_you_cards, through: :thank_you_card_styles
end
