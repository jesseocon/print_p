class Rsvp < ActiveRecord::Base
  attr_accessible :description, :rsvpsimage_content_type, :rsvpsimage_file_name, 
                  :rsvpsimage_file_size, :rsvpsimage_updated_at, :name, :rsvpsimage, :color_tokens,
                  :season_tokens, :style_tokens
  
  has_many :rsvp_colors
  has_many :colors, through: :rsvp_colors
  
  has_many :rsvp_seasons 
  has_many :seasons, through: :rsvp_seasons
  
  has_many :rsvp_styles
  has_many :styles, through: :rsvp_styles
  
  has_many :invitation_rsvps
  has_many :invitations, through: :invitation_rsvps
                  
  attr_reader :color_tokens, :season_tokens, :style_tokens, :asset_tokens

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

  has_attached_file :rsvpsimage, 
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
