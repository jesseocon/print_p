class Menu < ActiveRecord::Base
  attr_accessible :description, :mimage_content_type, :mimage_file_name,
                  :mimage_file_size, :mimage_update_at, :name, :color_tokens,
                  :season_tokens, :style_tokens, :mimage
                  
  has_many :menu_colors
  has_many :colors, through: :menu_colors
  
  has_many :menu_seasons
  has_many :seasons, through: :menu_seasons
  
  has_many :menu_styles
  has_many :styles, through: :menu_styles
  
  has_many :invitation_menus
  has_many :invitations, through: :invitation_menus
  
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
  
  has_attached_file :mimage, 
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
