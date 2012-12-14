class Color < ActiveRecord::Base
  attr_accessible :name
  default_scope order("colors.name ASC")
  has_many :invitation_colors
  has_many :invitations, through: :invitation_colors
  
  has_many :menu_colors
  has_many :menus, through: :menu_colors
  
  has_many :program_colors
  has_many :programs, through: :program_colors
  
  has_many :save_the_date_colors
  has_many :save_the_dates, through: :save_the_date_colors
  
  has_many :rsvp_colors
  has_many :rsvps, through: :rsvp_colors
  
  has_many :thank_you_card_colors
  has_many :thank_you_cards, through: :thank_you_card_colors
  
end
