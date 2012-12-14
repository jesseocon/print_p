class Invitation < ActiveRecord::Base
  attr_accessible :description, :name, :image_file_name, :image_content_type,
                  :image_file_size, :image_updated_at, :image, :color_tokens,
                  :season_tokens, :style_tokens, :asset_tokens, :rsvp_tokens,
                  :menu_tokens, :program_tokens, :thank_you_card_tokens,
                  :invitation_tokens, :featured, :invitation_pricing_id
                  
  belongs_to :invitation_pricing
                  
  has_many :invitation_colors
  has_many :colors, through: :invitation_colors
  
  has_many :invitation_seasons
  has_many :seasons, through: :invitation_seasons
  
  has_many :invitation_styles
  has_many :styles, through: :invitation_styles
  
  has_many :invitation_assets
  has_many :assets, through: :invitation_assets
  
  has_many :invitation_rsvps
  has_many :rsvps, through: :invitation_rsvps
  
  has_many :invitation_menus
  has_many :menus, through: :invitation_menus
  
  has_many :invitation_programs
  has_many :programs, through: :invitation_programs
  
  has_many :invitation_thank_you_cards
  has_many :thank_you_cards, through: :invitation_thank_you_cards
  
  has_many :relationships, foreign_key: "beta_id", dependent: :destroy
  has_many :alpha_invitations, through: :relationships, source: :alpha
  
  has_many :reverse_relationships, foreign_key: "alpha_id", 
                                   class_name: "Relationship",
                                   dependent: :destroy
  has_many :beta_invitations, through: :reverse_relationships, source: :beta
  
  attr_reader :color_tokens, :season_tokens, :style_tokens, :asset_tokens, :rsvp_tokens,
              :menu_tokens, :program_tokens, :thank_you_card_tokens, :invitation_tokens,
              :quantity_and_price
  
  def color_tokens=(ids)
    self.color_ids = ids.split(",")
  end
  
  def season_tokens=(ids)
    self.season_ids = ids.split(",")
  end
  
  def style_tokens=(ids)
    self.style_ids = ids.split(",")
  end
  
  def asset_tokens=(ids)
    self.asset_ids = ids.split(",")
  end
  
  def rsvp_tokens=(ids)
    self.rsvp_ids = ids.split(",")
  end
  
  def menu_tokens=(ids)
    self.menu_ids = ids.split(",")
  end
  
  def program_tokens=(ids)
    self.program_ids = ids.split(",")
  end
  
  def thank_you_card_tokens=(ids)
    self.thank_you_card_ids = ids.split(",")
  end
  
  def invitation_tokens=(ids)
    self.beta_invitation_ids = ids.split(",")
  end
  
  def matching_items_available?
    self.rsvps.count > 0 ||
    self.menus.count > 0 ||
    self.thank_you_cards.count > 0
  end
  
  def beta_invitations_available?
    self.beta_invitations.count > 0
  end
  
  def to_s
    return self.name
  end
  
  def to_name(name)
    return name
  end
  
  has_attached_file :image, 
  	:styles => { :medium => "300x300>", 
  	  :grid => {:geometry => "1500x1500^", :format => :jpg}, 
  	  :thumb => {:geometry => "290x200>", :format => :jpg}},
  	  :large => {:geometry => "800x900"},
    	  :convert_options => {
    	    :grid => "-gravity southeast -extent 300x300",
    	    :thumb => "-quality 45 -strip"
    	  },

    :whiny => false,

    :storage => :s3,
    :bucket => ENV['S3_BUCKET'],
    :s3_headers => { 'Content-Disposition' => 'inline' },
    :s3_credentials => {  :access_key_id        => ENV['S3_KEY'],
                          :secret_access_key    => ENV['S3_SECRET']},
    #:s3_credentials => (Rails.root + "config/s3.yml").to_s,
    :hash_data => ":attachment/:id/:style.:extension",
    :hash_secret => "longSecretString",
    :path => ":attachment/:id/:hash/:style.:extension"
    
end
