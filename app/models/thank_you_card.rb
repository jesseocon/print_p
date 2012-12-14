class ThankYouCard < ActiveRecord::Base
  attr_accessible :description, :name, :tyimage_content_type, :tyimage_file_name, 
                  :tyimage_file_size, :tyimage_updated_at, :color_tokens, 
                  :season_tokens, :style_tokens, :tyimage
                  
  has_many :invitation_thank_you_cards
  has_many :invitations, through: :invitation_thank_you_cards
  
  has_many :thank_you_card_colors
  has_many :colors, through: :thank_you_card_colors
  
  has_many :thank_you_card_seasons
  has_many :seasons, through: :thank_you_card_seasons
  
  has_many :thank_you_card_styles
  has_many :styles, through: :thank_you_card_styles
                  
  attr_reader :color_tokens, :season_tokens, :style_tokens

  def color_tokens=(ids)
    self.color_ids = ids.split(",")
  end

  def season_tokens=(ids)
    self.season_ids = ids.split(",")
  end

  def style_tokens=(ids)
    self.style_ids = ids.split(",")
  end

  has_attached_file :tyimage, 
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
    :s3_headers => { 'Content-Disposition' => 'inline' },
    :s3_credentials => (Rails.root + "config/s3.yml").to_s,
    :hash_data => ":attachment/:id/:style.:extension",
    :hash_secret => "longSecretString",
    :path => ":attachment/:id/:hash/:style.:extension"
end
